/*************************************************************************
  > File Name: solve.c
  > Author: Wang Xinliang
  > mail: clarencewxl@gmail.com
  > Created Time: Tue 11 Oct 2016 02:54:53 PM CST
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <athread.h>
#include "func.h"
#define TIME(a,b) (1.0*((b).tv_sec-(a).tv_sec)+0.000001*((b).tv_usec-(a).tv_usec))
#define MAX(a,b) ((a)>(b)?(a):(b))
#define MIN(a,b) ((a)<(b)?(a):(b))

void init0(double *data, int length)
{
	int i;
	for(i = 0; i < length; i ++)
		data[i] = 0;
}

void init(double *data, int length)
{
	int i;
	long long r = rand();
	for(i = 0; i < length; i ++)
		data[i] = 0.1 + (double)((r++)%10000)*1e-5;
}

int comp(const void *a, const void *b)
{
	double res = *(double*)a-*(double*)b;
	if(res < 0) return -1;
	else if(res > 0) return 1;
	else return 0;
}

void check(double *A, double *B, int length, int M, int N, int L)
{
	int i;
	for(i = 0; i < length; i ++)
	{
		double t = A[i]-B[i];
		if(t < 0) t = -t;
		if(t > 1e-14)
		{
			printf("Warning: The first wrong %d(%d,%d,%d)(%.16lf %.16lf)\n", i, i/(N*L), (i/L)%N, i%L, A[i], B[i]);
			exit(-1);
		}
	}
}

int main(int argc, char **argv)
{
	int STEPS = 5;
	int M = 1, N = 1, L = 1;
	char *type = argv[1];
	double SIZE;
	//Init Function pointer
	void (*base)		  (double *, double *, double *, int, int, int) = NULL;
	void (*forward)	  (double *, double *, double *, int, int, int) = NULL;
	double *A  = NULL;
	double *B  = NULL;
	double *X1 = NULL;
	double *X2 = NULL;
	int rnz = 0;
	int s;
	double tt[3][100];
	if(argc > 2) M = atoi(argv[2]);
	if(argc > 3) N = atoi(argv[3]);
	if(argc > 4) L = atoi(argv[4]);
	printf("===============================\n");
	SIZE = 1.0*M*N*L*sizeof(double)*0.001*0.001;

	athread_init();
	if(strcmp(type, "2D5") == 0)
	{
		rnz           = 2;
		base          = forward_2D5_MPE;
		forward       = forward_2D5;
	}
	
	printf("Type:%s, <M,N,L>: <%d,%d,%d> %.3lfMB\n", type, M, N, L, (3+rnz)*SIZE);

	A  = (double*)malloc(rnz*M*N*L*sizeof(double));
	B  = (double*)malloc(M*N*L*sizeof(double));
	X1 = (double*)malloc(M*N*L*sizeof(double));
	X2 = (double*)malloc(M*N*L*sizeof(double));
	
	printf("=====Init Data =====\n");
	init(A, M*N*L*rnz);
	init(B, M*N*L);
	printf("=====Test Begin=====\n");
	
	for(s = 0; s < STEPS; s ++)
	{
		struct timeval t1, t2;
		init0(X2, M*N*L);
		gettimeofday(&t1, NULL);
		base(X2, A, B, M, N, L);
		gettimeofday(&t2, NULL);
		tt[1][s] = TIME(t1,t2);
		//printf("BASE:%lf\n", TIME(t1,t2));
	}
	for(s = 0; s < STEPS; s ++)
	{
		struct timeval t1, t2;
		init0(X1, M*N*L);
		gettimeofday(&t1, NULL);
		forward(X1, A, B, M, N, L);
		gettimeofday(&t2, NULL);
		tt[2][s] = TIME(t1,t2);
		//printf("BASE:%lf\n", TIME(t1,t2));
	}
	qsort(tt[0], STEPS, sizeof(double), comp);
	qsort(tt[1], STEPS, sizeof(double), comp);
	qsort(tt[2], STEPS, sizeof(double), comp);
	printf("Base    : %.6lf(%.6lf) BW(%.3lfMB/s)\n", tt[1][STEPS/2], tt[1][0], SIZE*(2.0+rnz)/tt[1][STEPS/2]);
	printf("Pipeline: %.6lf(%.6lf) BW(%.3lfMB/s)\n", tt[2][STEPS/2], tt[2][0], SIZE*(2.0+rnz)/tt[2][STEPS/2]);
	check(X1, X2, M*N*L, M, N, L);
	printf("Test is over\n");
	printf("===============================\n");
	free(A);
	free(B);
	return 0;
}

