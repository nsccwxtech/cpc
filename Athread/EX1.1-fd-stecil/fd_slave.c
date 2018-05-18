/*4-order finite difference computation */
#include "slave.h"


#define NN 1284
#define NM 1024

const float c0 = -30. / 12., c1 = 16. / 12., c2 = - 1. / 12.;

typedef struct
{
	float *A;
	float *A_new;

	int row;
	int col;

} Param;

#define TILE 10    /*每个从核负责计算的行数*/


inline  addn(int x, int n, int x1) {
	return x + n < x1 ? x + n : x + n - x1;
}

void fd_compute(Param *host) {

	volatile unsigned long get_reply, put_reply;
	volatile int id =  athread_get_id(-1);

	/*
		获取从主核传过来的参数
	*/
	float *A = host->A;
	float *A_new = host->A_new;
	int row = host->row;
	int col = host->col;

	/*
		A_slave将存储从主核athread_get的 TILE + 4 行数据
		A_new_slave 将存储从核差分计算结果
	*/
	float A_slave[TILE + 4][NM];
	float A_new_slave[NM];

    //unsigned long memory_size = ((TILE+4)*NM + NM) * sizeof(float);
    //if(id==0) printf("slave memory = %d Bytes\n",memory_size);
	
	float *A_host;
	float *A_new_host;
	float *A_host_end;
	float *A_new_host_next;
	float *A_host_start;

	volatile int row_beg, row_end, row_num;
	int loop_num;
	int tile = TILE;

	int i, j, i_pos_m2 , i_pos_m1 , i_pos, i_pos_p1,	i_pos_p2, row_comp, loop;
	int d0 = 2, d1 = 2; /*计算当前格点需要前后左右各两个格点*/

	/*
		1.沿行划分从核任务
		2.每个从核负责计算 tile 行
		3.一轮从核计算中，64 个从核总共会计算 64 * tile 行
		4.loop_num = 总行数 /（64 * tile）为从核计算的轮数
		5.（总行数 + tile * 64 - 1） 是为了补余，
		比如 总行数为65，每个从核计算 1 行，则需要两轮从核计算，
		其中第二轮只有第 0 号从核有效计算
	*/
	loop_num = (row + tile * 64 - 1) / (tile * 64);

	/*从计算轮数循环*/
	for (loop = 0; loop < loop_num; loop++)
	{
		/*
			row_beg: 每个从核所负责计算区域的 起始行号
			row_end: 每个从核所负责计算区域的 结束行号
			row_num: 每个从核所负责计算区域的 行数
			如果结束行号row_end大于总行数，则row_end = row
			------------------------------------------------------------
			比如: loop = 0;id=0;row_beg =0,row_end = tile,row_num = tile;
			表示在第0轮计算中，0号从核从第0行开始算，算到第tile行结束，总共计算tile行
			------------------------------------------------------------
		*/
		row_beg = loop * tile * 64 + id * tile;
		row_end = loop * tile * 64 + (id + 1) * tile;
		row_end = row_end < row ? row_end : row;
		row_num = row_end - row_beg;

		/*
			A_host: 每个从核所负责计算区域的 起始地址
			A_host_start: 起始地址往前偏移两行，因为计算第一格点需要前面两个格点
			A_host_end： 每个从核所负责计算区域的 结束地址
			row_num + 4 是考虑到前两行和最后两行
		*/
		A_host = A + row_beg * col;
		A_new_host = A_new + row_beg * col;
		A_host_start = A_host - 2 * col;
		A_host_end = A_host + (row_num + 4) * col;


		/*
			第一次从主存取数据，取的数据量为(tile + 4) * col，包含前两行和最后两行
		*/
        get_reply = 0;
        athread_get(PE_MODE, A_host_start, &A_slave[0][0],  (tile + 4) * col * sizeof(float), &get_reply, 0, 0, 0);
        while (get_reply != 1);


		row_comp = 0;
		for (i = 0; i < row_num; i++) {

            i_pos_m2 = row_comp;    /*前两行*/ 
			i_pos_m1 = row_comp + 1;  /*前一行*/
			i_pos = row_comp + 2;     /*当前计算行*/
			i_pos_p1 = row_comp + 3;  /*后一行*/
			i_pos_p2 = row_comp + 4;  /*后两行*/

			/*
				差分计算，计算当前格点需要前后左右各两个格点值
			*/
			for (j = 2; j < col - 2; j++) {
				A_new_slave[j] = c0 * A_slave[i_pos][j] +
				                 c1 * (A_slave[i_pos_m1][j] + A_slave[i_pos_p1][j]) +
				                 c2 * (A_slave[i_pos_m2][j] + A_slave[i_pos_p2][j]) +
				                 c1 * (A_slave[i_pos][j - 1] + A_slave[i_pos][j + 1]) +
				                 c2 * (A_slave[i_pos][j - 2] + A_slave[i_pos][j + 2]);
			}

			/*
				将计算结果返回主存，一次只计算了一行
			*/
			put_reply = 0;
			athread_put(PE_MODE, &A_new_slave[0], A_new_host, col * sizeof(float), &put_reply, 0, 0);
			while (put_reply != 1);
			A_new_host = A_new_host + col;

			row_comp = row_comp + 1; /*计算下一行*/

		}/*i*/

	}/*loop*/


}
