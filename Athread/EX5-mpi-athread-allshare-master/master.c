#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <athread.h>
#include "mpi.h"
#define DIM_I 1024 
#define DIM_J 1024
#define DIM_K 512

#define J 64
#define I 1000

static inline unsigned long rpcc()
{
        unsigned long time;
        asm("rtc %0": "=r" (time) : );
        return time;
}

double a1[J][I],b1[J][I],c1[J][I],cc1[J][I];

int main(int argc, char *argv[])
{
  unsigned long *a,*b,*c,*d;
  unsigned long sum_total,size1;
  int myid, numprocs;
  extern void slave_func();

  int i,j;
  double checksum;
  double checksum2;
  unsigned long st,ed;

  MPI_Init(&argc,&argv);
  MPI_Comm_size(MPI_COMM_WORLD,&numprocs);
  MPI_Comm_rank(MPI_COMM_WORLD,&myid);
  sum_total=0;
  if(myid==0){
    size1=DIM_I*DIM_J*DIM_K;
    a=(unsigned long*)malloc(size1*sizeof(unsigned long));
    b=(unsigned long*)malloc(size1*sizeof(unsigned long));
    c=(unsigned long*)malloc(size1*sizeof(unsigned long));
    d=(unsigned long*)malloc(size1*sizeof(unsigned long));
    for(i=0;i<size1;i++){
            a[i] = 1; b[i] = 2; c[i] = 3; d[i] = 4;
            sum_total = sum_total + a[i] + b[i]/2 + c[i]/3 + d[i]/4;
      } 
    sum_total = sum_total/4;  
    if(sum_total==size1){
    size1=4*8*size1/(1024*1024*1024);
    printf("Process %d Memery size is more than : %dGB and sum = %d \n",myid,size1,sum_total);
    }
  }
  else{
    size1=DIM_I*DIM_J;
    a=(unsigned long*)malloc(size1*sizeof(unsigned long));
    b=(unsigned long*)malloc(size1*sizeof(unsigned long));
    c=(unsigned long*)malloc(size1*sizeof(unsigned long));
    d=(unsigned long*)malloc(size1*sizeof(unsigned long));
    for(i=0;i<size1;i++){
            a[i] = 1; b[i] = 2; c[i] = 3; d[i] = 4;
            sum_total = sum_total + a[i] + b[i]/2 + c[i]/3 + d[i]/4;
      } 
    sum_total = sum_total/4;  
    if(sum_total==size1){
    size1=4*8*size1/(1024*1024);
    printf("Process %d Memery size is more than : %dMB and sum = %d \n",myid,size1,sum_total);
    }
  }


   MPI_Barrier(MPI_COMM_WORLD);
 
   if(myid==0){printf("!!!!!! MPI+ATHREAD+ALLSHARE+MASTER EXAMPLE TOTAL PROCS is %d !!!!!!\n",numprocs);fflush(NULL);}
 
   for(j=0;j<J;j++)
   for(i=0;i<I;i++){
           a1[j][i]=(i+j+0.5);
           b1[j][i]=(i+j+1.0);
   }
   st=rpcc();
   for(j=0;j<J;j++)
   for(i=0;i<I;i++){
           cc1[j][i]=(a1[j][i])/(b1[j][i]);
   }
   ed=rpcc();
   if(myid==0){printf("the host counter=%ld\n",ed-st);}
 
   checksum=0.0;
   checksum2=0.0;
 
   if(myid==0){printf("!!!!!!!!!! BEGIN INIT !!!!!!!!!!\n");fflush(NULL);}
   athread_init();
 
   st=rpcc();
 
   athread_spawn(func,0);//fflush(NULL);
   athread_join();
 
   ed=rpcc();
   if(myid==0){printf("the manycore counter=%ld\n",ed-st);}
 
   if(myid==0){printf("!!!!!!!!!! END JOIN !!!!!!!!!\n");fflush(NULL);}
 
   for(j=0;j<J;j++)
   for(i=0;i<I;i++){
           checksum=checksum+c1[j][i];
           checksum2=checksum2+cc1[j][i];
   }
 
   if(myid==0){
           printf("the master value is %f!\n",checksum2);
           printf("the manycore value is %f!\n",checksum);
   }
 
   athread_halt();
   if(myid==0){printf("!!!!!!!!!! END HALT !!!!!!!!!\n");fflush(NULL);}

  MPI_Finalize();
}
