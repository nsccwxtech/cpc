/*************************************************************************
	> File Name: func.h
	> Author: Wang Xinliang
	> mail: clarencewxl@gmail.com
	> Created Time: Tue 11 Oct 2016 03:30:42 PM CST
 ************************************************************************/

#ifndef _FUNC_H_
#define _FUNC_H_

/* 2D 5 */
void fact_2D5  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_2D5 (double *X, double *A, double *B, int M, int N, int L);
void backward_2D5(double *X, double *A, double *B, int M, int N, int L);
void fact_2D5_MPE  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_2D5_MPE (double *X, double *A, double *B, int M, int N, int L);
void backward_2D5_MPE(double *X, double *A, double *B, int M, int N, int L);
void forward_2D5_wrong(double *X, double *A, double *B, int M, int N, int L);//

/* 3D 7 */
void fact_3D7  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_3D7 (double *X, double *A, double *B, int M, int N, int L);
void backward_3D7(double *X, double *A, double *B, int M, int N, int L);
void fact_3D7_MPE  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_3D7_MPE (double *X, double *A, double *B, int M, int N, int L);
void backward_3D7_MPE(double *X, double *A, double *B, int M, int N, int L);
void forward_3D7_wrong(double *X, double *A, double *B, int M, int N, int L);//

/* 3D 11 */
void forward_3D11 (double *X, double *A, double *B, int M, int N, int L);
void backward_3D11(double *X, double *A, double *B, int M, int N, int L);
void fact_3D11_MPE  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_3D11_MPE (double *X, double *A, double *B, int M, int N, int L);
void backward_3D11_MPE(double *X, double *A, double *B, int M, int N, int L);
void forward_3D11_wrong(double *X, double *A, double *B, int M, int N, int L);//

/* 3D 19 */
void fact_3D19  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_3D19 (double *X, double *A, double *B, int M, int N, int L);
void backward_3D19(double *X, double *A, double *B, int M, int N, int L);
void fact_3D19_MPE  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_3D19_MPE (double *X, double *A, double *B, int M, int N, int L);
void backward_3D19_MPE(double *X, double *A, double *B, int M, int N, int L);
void forward_3D19_wrong(double *X, double *A, double *B, int M, int N, int L);//

/* 3D 27 */
void forward_3D27(double *X, double *A, double *B, int M, int N, int L);
void backward_3D27(double *X, double *A, double *B, int M, int N, int L);
void fact_3D27_MPE  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_3D27_MPE (double *X, double *A, double *B, int M, int N, int L);
void backward_3D27_MPE(double *X, double *A, double *B, int M, int N, int L);
void forward_3D27_wrong(double *X, double *A, double *B, int M, int N, int L);//

/* 3D 25 */
void forward_3D25(double *X, double *A, double *B, int M, int N, int L);
void backward_3D25(double *X, double *A, double *B, int M, int N, int L);
void fact_3D25_MPE  (double *LB, double *UB, double *A, int M, int N, int L);
void forward_3D25_MPE (double *X, double *A, double *B, int M, int N, int L);
void backward_3D25_MPE(double *X, double *A, double *B, int M, int N, int L);



#endif
