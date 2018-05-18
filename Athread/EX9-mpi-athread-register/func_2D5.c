/*************************************************************************
	> File Name: func_2D5.c
	> Author: Wang Xinliang
	> mail: clarencewxl@gmail.com
	> Created Time: Tue 11 Oct 2016 03:28:25 PM CST
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <athread.h>
#include "my_slave.h"

extern SLAVE_FUN(fact_2D5_slave)(void*);
extern SLAVE_FUN(forward_2D5_slave)(void*);
extern SLAVE_FUN(backward_2D5_slave)(void*);
extern SLAVE_FUN(sequential_2D5_slave)(void*);

void forward_2D5(double *X, double *A, double *B, int M, int N, int L)
{
	Info info;
	info.X = X;
	info.A = A;
	info.B = B;
	info.M = M;
	info.N = N;
	info.L = L;
	athread_spawn(forward_2D5_slave, &info);
	athread_join();
	return;
}

void backward_2D5(double *X, double *A, double *B, int M, int N, int L)
{
	Info info;
	info.X = X;
	info.A = A;
	info.B = B;
	info.M = M;
	info.N = N;
	info.L = L;
	athread_spawn(backward_2D5_slave, &info);
	athread_join();
	return;
}


void fact_2D5(double *LB, double *UB, double *A, int M, int N, int L)
{
	FInfo info;
	info.LB = LB;
	info.UB = UB;
	info.A  = A;
	info.M  = M;
	info.N  = N;
	info.L  = L;
	athread_spawn(fact_2D5_slave, &info);
	athread_join();
	return;
}

void fact_2D5_MPE(double *LB, double *UB, double *A, int M, int N, int L)
{
#define OFFSET(i,j,m) (((i)*N+(j))*(m))
	int lnz = 2, unz = 3, rnz = lnz+unz;
	int i,j,k;
	double rbuf[6];
	for(i = 0; i < M; i ++)
	{
		for(j = 0; j < N; j ++)
		{
			//Fill in rbuf
			rbuf[0] = A[OFFSET(i,j,rnz)+0];
			rbuf[1] = A[OFFSET(i,j,rnz)+1];
			rbuf[2] = A[OFFSET(i,j,rnz)+2];
			rbuf[3] = A[OFFSET(i,j,rnz)+3];
			rbuf[4] = A[OFFSET(i,j,rnz)+4];
			//Begin to Calculate
			if(i != 0) // i-1
			{
				double *u = UB + M*N*unz - OFFSET(i-1,j,unz) - unz;
				rbuf[0] *= u[unz-1];
				rbuf[2] -= rbuf[0] * u[unz-2];
			}
			if(j != 0) // j-1
			{
				double *u = UB + M*N*unz - OFFSET(i,j-1,unz) - unz;
				rbuf[1] *= u[unz-1];
				rbuf[2] -= rbuf[1] * u[unz-3];
			}
			//Adjust diagonal
			rbuf[2] = 1.0 / rbuf[2];
			//Write Back to LB and UB
			LB[OFFSET(i,j,lnz)+0] = rbuf[0];
			LB[OFFSET(i,j,lnz)+1] = rbuf[1];
			UB[M*N*unz-OFFSET(i,j,unz)-unz+0] = rbuf[3];
			UB[M*N*unz-OFFSET(i,j,unz)-unz+1] = rbuf[4];
			UB[M*N*unz-OFFSET(i,j,unz)-unz+2] = rbuf[2];
		}
	}
#undef OFFSET
	return;
}

void forward_2D5_MPE(double *X, double *_A, double *B, int M, int N, int L)
{
	int i;
	int j;
	double (*A)[2] = (double (*)[2])_A;
	double result = 0;
	for(i = 0; i < M; i ++)
	{
		for(j = 0; j < N; j ++)
		{
			result = B[i*N+j];
			if(i != 0) result -= A[i*N+j][0] * X[(i-1)*N+j];
			if(j != 0) result -= A[i*N+j][1] * X[i*N+j-1];
			X[i*N+j] = result;
		}
	}
}

void backward_2D5_MPE(double *X, double *_A, double *B, int M, int N, int L)
{
	int i;
	int j;
	double *A = _A;
	double result = 0;
	for(i = M-1; i >= 0; i --)
	{
		for(j = N-1; j >= 0; j --)
		{
			result = B[i*N+j];
			if(i != M-1) result -= A[1] * X[(i+1)*N+j];
			if(j != N-1) result -= A[0] * X[i*N+j+1];
			result *= A[2];
			X[i*N+j] = result;
			A += 3;
		}
	}
}


