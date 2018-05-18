#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <athread.h>
#include "mpi.h"

#define DIM_I 1024 
#define DIM_J 1024
#define DIM_K 512
#define DIM_M 10
#define NUM_THREADS 4
#define J 64
#define I 1000

unsigned long rpcc()
{
  unsigned long a;
  asm("rtc %0": "=r" (a) : );
  return a;
};

unsigned long *a,*b,*c,*d;
double a1[J][I],b1[J][I],c1[J][I],cc1[J][I];

void PrintHello(int args)
{
  int i,j,k,m;
  int dim;
  unsigned long check_a;
  int flag;
  unsigned long start,end;
  double checksum,checksum2;
  struct {
    int pid;
    int pnum;
  } param;
  extern void slave_func();

  param.pid = args;
  param.pnum = NUM_THREADS;
 
  dim=(DIM_I*DIM_J*DIM_K);
  check_a = 0;
  start = rpcc(); 
  for(i = args;i<dim;i=i+NUM_THREADS){
        b[i] = 1; 
        c[i] = 2;
        a[i] = b[i] + c[i];
  }
  end = rpcc();

  for(i = args;i<dim;i=i+NUM_THREADS){
        check_a = check_a + a[i];
  }
  printf("%d pthread use %ld to check_a = %ld\n",args,end-start,check_a);

  for(j=0;j<J;j++)
  for(i=0;i<I;i++){
          a1[j][i]=(i+j+0.5);
          b1[j][i]=(i+j+1.0);
  }
  start=rpcc();
  for(j=0;j<J;j++)
  for(i=0;i<I;i++){
          cc1[j][i]=(a1[j][i])/(b1[j][i]);
  }
  end=rpcc();
  if(args==0){printf("the host counter=%ld\n",end-start);}

  checksum=0.0;
  checksum2=0.0;

  athread_init();

  start = rpcc();
  athread_spawn(func, 0);
  athread_join();
  end = rpcc();

  athread_halt();
  for(j=0;j<J;j++)
  for(i=0;i<I;i++){
          checksum=checksum+c1[j][i];
          checksum2=checksum2+cc1[j][i];
  }


  if(args==0){
          printf("the manycore counter=%ld\n",end-start);
          printf("the master value is %f!\n",checksum2);
          printf("the manycore value is %f!\n",checksum);
  }

}

int main(int argc, char *argv[])
{
  
  int i,j,k,m;
  int t;
  unsigned long sum_total,size1,dim1;

  unsigned long s1,e1;
  unsigned long sum_a;

  int myid, numprocs;
  float size2;
  pthread_t thread[NUM_THREADS];

  MPI_Init(&argc,&argv);
  MPI_Comm_size(MPI_COMM_WORLD,&numprocs);
  MPI_Comm_rank(MPI_COMM_WORLD,&myid);

  sum_total=0;
  dim1=DIM_I*DIM_J*DIM_K;
  //size1=DIM_I*DIM_J*DIM_K;
  a=(unsigned long*)malloc(dim1*sizeof(unsigned long));
  b=(unsigned long*)malloc(dim1*sizeof(unsigned long));
  c=(unsigned long*)malloc(dim1*sizeof(unsigned long));
  d=(unsigned long*)malloc(dim1*sizeof(unsigned long));
//  for(i=0;i<dim1;i++){
//          a[i] = 1; b[i] = 2; c[i] = 3; d[i] = 4;
//          sum_total = sum_total + a[i] + b[i]/2 + c[i]/3 + d[i]/4;
//    }
//  sum_total = sum_total/4;
//
//  if(sum_total==dim1){
     size1=4*8*dim1/(1024*1024*1024); /* a/b/c/d size is 4GB(8*512*1024*1024)*/
     printf("Process %d Memery size is more than: %dGB \n",myid,size1); /*total size is 4*4GB=16GB*/
//  }

  s1= rpcc();
  for(i=0;i<dim1;i++){
          b[i] = 1;
          c[i] = 2;
          a[i] = b[i] + c[i];
  }
  e1= rpcc();

  sum_a =0;
  for(i=0;i<dim1;i++){
          sum_a = a[i] + sum_a;
  }
  printf("only %d-main pthread use %ld to sum_a = %ld \n",myid,e1-s1,sum_a);

/* creat NUM_THREADS to repeat computation */
  t = 0;
  for( t = 0; t < NUM_THREADS-1; t++)
  {
    if( pthread_create(&thread[t],NULL,PrintHello,t))
    {
      printf("fail create pthread %d\n ",t);
    } 
  }
  PrintHello(NUM_THREADS-1);
  for( t = 0; t < NUM_THREADS-1; t++)
  {
    if(pthread_join(thread[t],NULL))
    printf("error join pthread.");
  }

  MPI_Finalize();

}
