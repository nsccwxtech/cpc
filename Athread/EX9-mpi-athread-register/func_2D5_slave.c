/*************************************************************************
  > File Name: func_2D5_slave.c
  > Author: Wang Xinliang
  > mail: clarencewxl@gmail.com
  > Created Time: Tue 11 Oct 2016 04:00:40 PM CST
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <slave.h>
#include <simd.h>
#include <dma.h>
#include "my_slave.h"

static inline int EMPTY_GETR(void) { int var; asm volatile ("rcsr %0,0x34\n":"=r"(var)); return var; }
static inline int EMPTY_GETC(void) { int var; asm volatile ("rcsr %0,0x35\n":"=r"(var)); return var; }
static inline int FULL_PUT(void) { int var; asm volatile ("rcsr %0,0x36\n":"=r"(var)); return var; }

void magic_touch_long_long(int *v)
{
	return;
}

void stest()
{
#ifdef _MYID
	if(_MYID == 0)
		printf("Hello World from %d\n", _MYID);
#endif
}

void sequential_2D5_slave_kernel(double *X, double *A, double *B, int M, int N, int L)
{
#define HALO 4
#define MLEN 1000
	volatile int reply = 0;
	volatile int COUNT = 0;
	double LX[2][HALO+MLEN];
	double LA[MLEN][2];
	int k = 0,j = 0,i = 0;
	dma_desc dma_get;
	dma_desc dma_put;
	WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
	WXL_DMA_SET_NOSIZE(&dma_put, DMA_PUT, &reply);
	for(k = 0; k < N; k += MLEN)
	{
		int LEN = MLEN < (N-k) ? MLEN : (N-k);
		int id = 1;
		for(j = 0; j < HALO+LEN; j ++) LX[0][j] = 0;
		for(i = 0; i < M; i ++)
		{
			WXL_DMA_NEW(dma_get, B+1*(i*N+k), LX[id]+HALO, sizeof(double)*(LEN), COUNT);
			WXL_DMA_NEW(dma_get, A+2*(i*N+k), &LA[0][0],   sizeof(double)*LEN*2, COUNT); 
			if(k == 0) LX[id][HALO-1] = 0;
			else       LX[id][HALO-1] = X[i*N+k-1];
			dma_wait(&reply, COUNT);
			for(j = HALO; j < HALO+LEN; j ++)
				LX[id][j] = (LX[id][j] - \
						LA[j-HALO][0]*LX[1-id][j] - \
						LA[j-HALO][1]*LX[id][j-1]);
			WXL_DMA_NEW(dma_put, X+i*N+k, LX[id]+HALO, sizeof(double)*LEN, COUNT);
			dma_wait(&reply, COUNT);
			id = 1-id;
		}
	}		
#undef HALO
#undef MLEN
}

static int Cal_ID(int ids[8])
{
	//Init id information
	int id = -1;
	int gr = -1, gc = -1, pr = -1, pc = -1;
	int row = ROW(_MYID);
	int col = COL(_MYID);
	if(col%2)
	{
		id = col*8+7-row;
		pr = gr = pc = gc = -1;
		if(row == 0)
		{
			pr = (col+1)%8;
			gc = row+1;
		}
		else if(row == 7)
		{
			gr = col-1;
			pc = row-1;
		}
		else
		{	
			pc = row-1;
			gc = row+1;
		}
	}
	else
	{
		id = 8*col + row;
		pr = gr = pc = gc = -1;
		if(row == 0)
		{
			pc = row+1;
			gr = (col+7)%8;
		}
		else if(row == 7)
		{
			pr = col+1;
			gc = row-1;
		}
		else
		{	
			pc = row+1;
			gc = row-1;
		}
	}
	//printf("%3d(%2d%2d%2d%2d) ", id, gr, pr, gc, pc);

	ids[0] = id;
	ids[1] = pr;
	ids[2] = gr;
	ids[3] = pc;
	ids[4] = gc;
	return 0;
}

int Cal_ID_RM(int ids[8])
{
	//Init id information
	int id = -1;
	int gr = -1, gc = -1, pr = -1, pc = -1;
	int row = ROW(_MYID);
	int col = COL(_MYID);
	if(row%2)
	{
		id = 7-col+8*row;
		pr = gr = pc = gc = -1;
		if(col == 0)
		{
			pc = (row+1)%8;
			gr = col+1;
		}
		else if(col == 7)
		{
			gc = row-1;
			pr = col-1;
		}
		else
		{	
			pr = col-1;
			gr = col+1;
		}
	}
	else
	{
		id = col + 8*row;
		pr = gr = pc = gc = -1;
		if(col == 0)
		{
			pr = col+1;
			gc = (row+7)%8;
		}
		else if(col == 7)
		{
			pc = row+1;
			gr = col-1;
		}
		else
		{	
			pr = col+1;
			gr = col-1;
		}
	}
	//printf("%3d(%2d%2d%2d%2d) ", id, gr, pr, gc, pc);

	ids[0] = id;
	ids[1] = pr;
	ids[2] = gr;
	ids[3] = pc;
	ids[4] = gc;
	return 0;
}

int forward_2D5_slave_kernel(double *X, double *A, double *B, int M, int N, int L)
{
	int id = -1;
	int gr = -1, gc = -1, pr = -1, pc = -1;
	//Init id information
	{
		int ids[8];
		Cal_ID(ids);
		id = ids[0];
		pr = ids[1];
		gr = ids[2];
		pc = ids[3];
		gc = ids[4];
	}
	//Begin Cal
	{
#define HALO 4
#define MLEN 1000 
		volatile int reply = 0;
		volatile int COUNT = 0;
		char out[128];
		double LX[2][HALO+MLEN];
		double LA[MLEN][2];
		int TLEN = (((N-1)/((N-1)/MLEN+1))/HALO+1)*HALO;
		int k = 0,j = 0,i = 0;
		dma_desc dma_get;
		dma_desc dma_put;
		WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
		WXL_DMA_SET_NOSIZE(&dma_put, DMA_PUT, &reply);
		for(k = 0; k < N; k += TLEN)
		{
			int idx = 0;
			int idxx = 0;
			int count = 0;
			int max_idx = 0;
			int LEN = TLEN > (N-k) ? (N-k) : TLEN;
			max_idx = (M/SLAVES+(id<(M%SLAVES)?1:0))*LEN;
			for(j = 0; j < HALO+LEN; j ++) LX[0][j] = 0;
			if(id == 0) idx = LEN;
			for(i = id; i < M; i += SLAVES)
			{
				WXL_DMA_NEW(dma_get, B+1*(i*N+k), LX[1]+HALO, sizeof(double)*(LEN), COUNT);
				WXL_DMA_NEW(dma_get, A+2*(i*N+k), &LA[0][0],  sizeof(double)*LEN*2, COUNT);
				if(k == 0) LX[1][HALO-1] = 0;
				else	   LX[1][HALO-1] = X[i*N+k-1];
				dma_wait(&reply, COUNT);
				for(j = HALO; j < HALO+LEN; j ++)
				{
					while(count >= idx)
					{
						doublev4 _v;
						if(gc >= 0)
						{
							REG_GETC(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
						if(gr >= 0)
						{
							REG_GETR(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
					}
					LX[1][j] = (LX[1][j] - \
							LA[j-HALO][0]*LX[0][j-HALO] - \
							LA[j-HALO][1]*LX[1][j-1]);
					count ++;
					if(i < (M-1))
					{
						if(pc >= 0) REG_PUTC(LX[1][j], pc);
						if(pr >= 0) REG_PUTR(LX[1][j], pr);
					}
					while(idx < max_idx && !(EMPTY_GETR()&&EMPTY_GETC()))
					{
						doublev4 _v;
						if(gc >= 0)
						{
							REG_GETC(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
						if(gr >= 0)
						{
							REG_GETR(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
					}
				}
				WXL_DMA_NEW(dma_put, X+i*N+k, LX[1]+HALO, sizeof(double)*LEN, COUNT);
				dma_wait(&reply, COUNT);
			}
		}
#undef HALO
#undef MLEN
	}
	return 0;
}

int backward_2D5_slave_kernel(double *X, double *A, double *B, int M, int N, int L)
{
	int id = -1;
	int gr = -1, gc = -1, pr = -1, pc = -1;
	//Init id information
	{
		int ids[8];
		Cal_ID(ids);
		id = ids[0];
		pr = ids[1];
		gr = ids[2];
		pc = ids[3];
		gc = ids[4];
	}
	//Begin Cal
	{
#define HALO 4
#define MLEN 1000 
		volatile int reply = 0;
		volatile int COUNT = 0;
		char out[128];
		double LX[2][HALO+MLEN];
		double LA[MLEN][3];
		int TLEN = (((N-1)/((N-1)/MLEN+1))/HALO+1)*HALO;
		int k = 0,j = 0,i = 0;
		dma_desc dma_get;
		dma_desc dma_put;
		WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
		WXL_DMA_SET_NOSIZE(&dma_put, DMA_PUT, &reply);
		for(k = 0; k < N; k += TLEN)
		{
			int idx = 0;
			int idxx = 0;
			int count = 0;
			int max_idx = 0;
			int LEN = TLEN > (N-k) ? (N-k) : TLEN;
			max_idx = (M/SLAVES+(id<(M%SLAVES)?1:0))*LEN;
			for(j = 0; j < HALO+LEN; j ++) LX[0][j] = 0;
			if(id == 0) idx = LEN;
			for(i = id; i < M; i += SLAVES)
			{
				WXL_DMA_NEW(dma_get, B+1*(M*N-i*N-k-LEN), LX[1],     sizeof(double)*(LEN), COUNT);
				WXL_DMA_NEW(dma_get, A+3*(i*N+k),		 &LA[0][0],  sizeof(double)*LEN*3, COUNT);
				if(k == 0) LX[1][LEN] = 0;
				else	   LX[1][LEN] = X[M*N-i*N-k];
				dma_wait(&reply, COUNT);
				for(j = 0; j < LEN; j ++)
				{
					while(count >= idx)
					{
						doublev4 _v;
						if(gc >= 0)
						{
							REG_GETC(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
						if(gr >= 0)
						{
							REG_GETR(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
					}
					LX[1][LEN-1-j] = (LX[1][LEN-1-j] - \
							LA[j][1]*LX[0][j] - \
							LA[j][0]*LX[1][LEN-j])*LA[j][2];
					count ++;
					if(i < (M-1))
					{
						if(pc >= 0) REG_PUTC(LX[1][LEN-1-j], pc);
						if(pr >= 0) REG_PUTR(LX[1][LEN-1-j], pr);
					}
					while(idx < max_idx && !(EMPTY_GETR()&&EMPTY_GETC()))
					{
						doublev4 _v;
						if(gc >= 0)
						{
							REG_GETC(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
						if(gr >= 0)
						{
							REG_GETR(_v);
							LX[0][idxx++] = *(double*)(&_v);
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
					}
				}
				WXL_DMA_NEW(dma_put, X+(M*N-i*N-k-LEN), LX[1], sizeof(double)*(LEN), COUNT);
				dma_wait(&reply, COUNT);
			}
		}
#undef HALO
#undef MLEN
	}
	return 0;
}


int fact_2D5_slave_kernel(double *LB, double *UB, double *A, int M, int N, int L)
{
	int id = -1;
	int gr = -1, gc = -1, pr = -1, pc = -1;
	//Init id information
	{
		int ids[8];
		Cal_ID(ids);
		id = ids[0];
		pr = ids[1];
		gr = ids[2];
		pc = ids[3];
		gc = ids[4];
	}
	//Begin Cal
	{
#define OFFSET(i,j,m) (((i)*N+(j))*(m))
#define HALO 4
#define MLEN 500
#define RNZ 5
#define LNZ 2
#define UNZ 3
		volatile int reply = 0;
		volatile int COUNT = 0;
		char out[128];
		double rbuf[RNZ];
		double LA[MLEN][RNZ];
		double LLB[1][MLEN][LNZ];
		double LUB[2][HALO+MLEN][UNZ];
		int TLEN = (((N-1)/((N-1)/MLEN+1))/HALO+1)*HALO;
		int k = 0,j = 0,i = 0;
		dma_desc dma_get;
		dma_desc dma_put;
		WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
		WXL_DMA_SET_NOSIZE(&dma_put, DMA_PUT, &reply);
		for(k = 0; k < N; k += TLEN)
		{
			int idx = 0;
			int idxx = 0;
			int count = 0;
			int max_idx = 0;
			int LEN = TLEN > (N-k) ? (N-k) : TLEN;
			max_idx = (M/SLAVES+(id<(M%SLAVES)?1:0))*LEN;
			for(j = 0; j < HALO+LEN; j ++)
			{
				LUB[0][j][0] = 0, LUB[0][j][1] = 0, LUB[0][j][2] = 1;
			}
			if(id == 0) idx = LEN;
			for(i = id; i < M; i += SLAVES)
			{
				WXL_DMA_NEW(dma_get, A+OFFSET(i,k,RNZ), &LA[0][0],  sizeof(double)*LEN*RNZ, COUNT);
				dma_wait(&reply, COUNT);
				if(k == 0)
				{
					LUB[1][LEN][0] = 0; 
					LUB[1][LEN][1] = 0; 
					LUB[1][LEN][2] = 1;
				}
				else
				{
					LUB[1][LEN][0] = UB[M*N*UNZ - OFFSET(i,k-1,UNZ) - UNZ + 0];
					LUB[1][LEN][1] = UB[M*N*UNZ - OFFSET(i,k-1,UNZ) - UNZ + 1];
					LUB[1][LEN][2] = UB[M*N*UNZ - OFFSET(i,k-1,UNZ) - UNZ + 2];
				}
				for(j = 0; j < LEN; j ++)
				{

					while(count >= idx)
					{
						doublev4 _v;
						if(gc >= 0)
						{
							REG_GETC(_v);
							LUB[0][idxx][0] = ((double*)(&_v))[0];
							LUB[0][idxx][1] = ((double*)(&_v))[1];
							LUB[0][idxx][2] = ((double*)(&_v))[2];
							idxx ++;
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
						if(gr >= 0)
						{
							REG_GETR(_v);
							LUB[0][idxx][0] = ((double*)(&_v))[0];
							LUB[0][idxx][1] = ((double*)(&_v))[1];
							LUB[0][idxx][2] = ((double*)(&_v))[2];
							idxx ++;
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
					}
					//Fill in rbuf
					rbuf[0] = LA[j][0];
					rbuf[1] = LA[j][1];
					rbuf[2] = LA[j][2];
					rbuf[3] = LA[j][3];
					rbuf[4] = LA[j][4];
					//Begin to Calculate
					//i-1
					rbuf[0] *= LUB[0][j][2];
					rbuf[2] -= rbuf[0] * LUB[0][j][1];
					//j-1
					rbuf[1] *= LUB[1][LEN-j][2];
					rbuf[2] -= rbuf[1] * LUB[1][LEN-j][0];
					//Adjust Diagonal
					rbuf[2] = 1.0 / rbuf[2];
					//Write Back to LB and UB
					LLB[0][j][0] = rbuf[0];
					LLB[0][j][1] = rbuf[1];
					LUB[1][LEN-1-j][0] = rbuf[3];
					LUB[1][LEN-1-j][1] = rbuf[4];
					LUB[1][LEN-1-j][2] = rbuf[2];

					count ++; //This is important

					if(i < (M-1))
					{
						doublev4 _v;// = simd_set_doublev4(rbuf[3], rbuf[4], rbuf[2], 0);
						((double*)(&_v))[0] = rbuf[3];
						((double*)(&_v))[1] = rbuf[4];
						((double*)(&_v))[2] = rbuf[2];
						if(pc >= 0) REG_PUTC(_v, pc);
						if(pr >= 0) REG_PUTR(_v, pr);
					}
					
					while(idx < max_idx && !(EMPTY_GETR()&&EMPTY_GETC()))
					{
						doublev4 _v;
						if(gc >= 0)
						{
							REG_GETC(_v);
							LUB[0][idxx][0] = ((double*)(&_v))[0];
							LUB[0][idxx][1] = ((double*)(&_v))[1];
							LUB[0][idxx][2] = ((double*)(&_v))[2];
							idxx ++;
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
						if(gr >= 0)
						{
							REG_GETR(_v);
							LUB[0][idxx][0] = ((double*)(&_v))[0];
							LUB[0][idxx][1] = ((double*)(&_v))[1];
							LUB[0][idxx][2] = ((double*)(&_v))[2];
							idxx ++;
							if(idxx >= LEN) idxx -= LEN;
							idx ++;
						}
					}
				}
				WXL_DMA_NEW(dma_put, LB + OFFSET(i,k,LNZ),                     &LLB[0][0][0], sizeof(double)*LEN*LNZ, COUNT);
				WXL_DMA_NEW(dma_put, UB + M*N*UNZ - OFFSET(i,k,UNZ) - LEN*UNZ, &LUB[1][0][0], sizeof(double)*LEN*UNZ, COUNT);
				dma_wait(&reply, COUNT);
			}
		}
#undef RNZ
#undef LNZ
#undef UNZ
#undef HALO
#undef MLEN
#undef OFFSET
	}
	return 0;
}

void forward_2D5_slave(void *_ptr)
{
	volatile int reply = 0;
	volatile int COUNT = 0;
	Info info;
	dma_desc dma_get;
	WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
	WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(Info), COUNT);
	dma_wait(&reply, COUNT);
	forward_2D5_slave_kernel(info.X, info.A, info.B, info.M, info.N, info.L);
	return;
}

void backward_2D5_slave(void *_ptr)
{
	volatile int reply = 0;
	volatile int COUNT = 0;
	Info info;
	dma_desc dma_get;
	WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
	WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(Info), COUNT);
	dma_wait(&reply, COUNT);
	backward_2D5_slave_kernel(info.X, info.A, info.B, info.M, info.N, info.L);
	return;
}


void sequential_2D5_slave(void *_ptr)
{
	if(_MYID == 0)
	{
		volatile int reply = 0;
		volatile int COUNT = 0;
		Info info;
		dma_desc dma_get;
		WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
		WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(Info), COUNT);
		dma_wait(&reply, COUNT);
		sequential_2D5_slave_kernel(info.X, info.A, info.B, info.M, info.N, info.L);
	}
	return;
}

void fact_2D5_slave(void *_ptr)
{
	volatile int reply = 0;
	volatile int COUNT = 0;
	FInfo info;
	dma_desc dma_get;
	WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
	WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(FInfo), COUNT);
	dma_wait(&reply, COUNT);
	fact_2D5_slave_kernel(info.LB, info.UB, info.A, info.M, info.N, info.L);
	return;
}


