/*************************************************************************
	> File Name: my_slave.h
	> Author: Wang Xinliang
	> mail: clarencewxl@gmail.com
	> Created Time: Tue 11 Oct 2016 03:34:45 PM CST
 ************************************************************************/

#ifndef _MY_SLAVE_H_
#define _MY_SLAVE_H_

#define MAX_SIZE_DOUBLE 7168
#define MAX_SIZE_DOUBLEV4 (MAX_SIZE_DOUBLE>>2)
#define SLAVES 64
#define COLS 8
#define ROWS 8
#define COL(x) (x & 0x07)
#define ROW(x) ((x & 0x38) >> 3)
#define REG_PUTR(var, dst) asm volatile ("putr %0,%1\n"::"r"(var),"r"(dst))
#define REG_PUTC(var, dst) asm volatile ("putc %0,%1\n"::"r"(var),"r"(dst))
#define REG_GETR(var) asm volatile ("getr %0\n":"=r"(var))
#define REG_GETC(var) asm volatile ("getc %0\n":"=r"(var))
#define ROWSYN  athread_syn(ROW_SCOPE,0xff)
#define COLSYN  athread_syn(COL_SCOPE,0xff)
#define ALLSYN  athread_syn(ARRAY_SCOPE,0xffff)
#define WXL_DMA_SET(d,mode,size,reply) {\
	  dma_set_size(d, size); \
	  dma_set_bsize(d, size); \
	  dma_set_stepsize(d, 0); \
	  dma_set_op(d, mode); \
	  dma_set_mode(d, PE_MODE); \
	  dma_set_reply(d, reply); \
}
#define WXL_DMA_SET_NOSIZE(d,mode,reply) {\
	  dma_set_stepsize(d, 0); \
	  dma_set_op(d, mode); \
	  dma_set_mode(d, PE_MODE); \
	  dma_set_reply(d, reply); \
}
#define WXL_DMA_SET_SIZE(d,size) {\
	  dma_set_size(d, (size)); \
	  dma_set_bsize(d, (size)); \
}
#define WXL_DMA(d,l,r,size) {WXL_DMA_SET_SIZE(&d,size); dma(d,(long)(l),(long)(r));}
#define WXL_DMA_NEW(d,l,r,size,count) {WXL_DMA_SET_SIZE(&d,size); dma(d,(long)(l),(long)(r)); count ++;}

typedef struct
{
	double *X;
	double *A;
	double *B;
	int M,N,L;
} Info;

typedef struct
{
	double *LB;
	double *UB;
	double *A;
	int M,N,L;
} FInfo;

#endif
