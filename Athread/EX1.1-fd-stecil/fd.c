/*4-order finite difference computation */
#include<stdio.h>
#include<stdlib.h>
#include<athread.h>

//#define NN 1028
#define NN 1284
#define NM 1024

typedef struct
{
	float *A;
	float *A_new;

	int row;
	int col;

} Param;

/*从核函数声明*/
extern SLAVE_FUN(fd_compute)(Param *);

/*拍数统计*/
static inline unsigned long rpcc()
{
	unsigned long time;
	asm("rtc %0": "=r" (time) : );
	return time;
}


int main() {

	unsigned long st[2] = {0, 0}, ed[4] = {0, 0};
	int i, j;
	float error;

	const int row = NN;
	const int col = NM;
	const float c0 = -30. / 12., c1 = 16. / 12., c2 = - 1. / 12.; /*差分系数*/

	float *A_temp = (float *)malloc((row * col) * sizeof(float));
	float **A = (float **)malloc(row * sizeof(float *));
	for (i = 0 ; i < row ; i ++) {
		A[i] = &A_temp[i * col];
	}

	/*存储从核计算结果*/
	float *A_new_temp = (float *)malloc(row * col * sizeof(float));
	float **A_new = (float **)malloc(row * sizeof(float *));
	for (i = 0 ; i < row ; i ++) {
		A_new[i] = &A_new_temp[i * col];
	}

	/*存储主核计算结果*/
	float *B_new_temp = (float *)malloc(row * col * sizeof(float));
	float **B_new = (float **)malloc(row * sizeof(float *));
	for (i = 0 ; i < row ; i ++) {
		B_new[i] = &B_new_temp[i * col];
	}

	/*初始化*/
	for (i = 0; i < row; i++) {
		for (j = 0; j < col; j++) {
			A[i][j] = i + j + 0.123456;
			A_new[i][j] = 0.0;
			B_new[i][j] = 0.0;
		}
	}

	printf("4-order finite difference computation: %d x %d mesh\n", row, col);

	/*把传给从核的参数写成结构体*/
	Param host;
	host.A = &A[2][0];                 /*从第二行开始计算. 计算第二行数据需要前两行数据*/
	host.A_new = &A_new[2][0];
	host.row = row - 4;                /*实际计算的行数应减去前两行以及最后两行*/
	host.col = col;

	/*从核计算*/
	athread_init();
	st[0] = rpcc();                    /*拍数计算*/
	athread_spawn(fd_compute, &host);  /*传结构体给从核*/
	athread_join();
	ed[0] = rpcc();
	athread_halt();

	st[1] = rpcc();
	/*主核计算*/
	for (i = 2; i < row - 2; i++) {
		for (j = 2; j < col - 2; j++) {
			B_new[i][j] = c0 * A[i][j] +
			              c1 * (A[i - 1][j] + A[i + 1][j]) +
			              c2 * (A[i - 2][j] + A[i + 2][j]) +
			              c1 * (A[i][j - 1] + A[i][j + 1]) +
			              c2 * (A[i][j - 2] + A[i][j + 2]);
		}
	}
	ed[1] = rpcc();

	printf("host counter = %ld, slaves counter = %ld, speed = %f\n",
	       ed[1] - st[1], ed[0] - st[0], (float)(ed[1] - st[1]) / (float)(ed[0] - st[0]));

	/*主从核正确性比对*/
	for (i = 2; i < row - 2; i++)
	{
		for (j = 2; j < col - 2; j++ )
		{
			if (abs(A_new[i][j] - B_new[i][j]) > 1e-6)
				printf("error\n");

		}
	}

	return 0;

}
