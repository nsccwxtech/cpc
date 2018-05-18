#include <stdlib.h>
#include <stdio.h>
#include <athread.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "mpi.h"

extern SLAVE_FUN(func1)();
extern SLAVE_FUN(func2)();


static inline unsigned long rpcc()
{
        unsigned long time;
        asm("rtc %0": "=r" (time) : );
        return time;
}

#define J 64
#define K 64
#define I 256


double a[J][K][I],b[J][K][I],c1[J][K][I],c2[J][K][I],cc[J][K][I];
unsigned long counter[J];

int main(int argc, char**argv)
{
  	int i,k,j; 
        double checksum1,checksum2,checksum_master;
        unsigned long st,ed;
        unsigned long cnt1,cnt2,cnt3;
        double perf;

        int myid, numprocs;

        MPI_Init(&argc,&argv);
        MPI_Comm_size(MPI_COMM_WORLD,&numprocs);
        MPI_Comm_rank(MPI_COMM_WORLD,&myid);

        if(myid==0){printf("!!!!!! C-EXAMPLE TOTAL PROCS is %d !!!!!!\n",numprocs);fflush(NULL);}
        if(myid==0){printf("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");fflush(NULL);}
	for(j=0;j<J;j++)
	for(k=0;k<K;k++)
 	for(i=0;i<I;i++){
          a[j][k][i]=(i+j+k+0.5)*0.46;
  	  b[j][k][i]=(i+j+k+1.0)*0.45;
	}
        st=rpcc();
	for(j=0;j<J;j++)
	for(k=0;k<K;k++)
 	for(i=0;i<I;i++){
	  cc[j][k][i]=(a[j][k][i]/b[j][k][i])+fabs(sqrt(a[j][k][i])-sqrt(b[j][k][i]))/2.34;
	  cc[j][k][i]=b[j][k][i]/a[j][k][i]+fabs(sqrt(a[j][k][i])-sqrt(b[j][k][i]))/2.34;
	}
        ed=rpcc();
        cnt1=ed-st;
        if(myid==0){printf("the host counter=%ld\n",cnt1);}

        if(myid==0){printf("!!!!!!!!!! BEGIN INIT !!!!!!!!!!\n");fflush(NULL);}
	athread_init();

        st=rpcc();
        athread_spawn(func1,0);//fflush(NULL);
        athread_join();
        ed=rpcc();
        cnt2=ed-st;
        if(myid==0){printf("the manycore counter=%ld\n",cnt2);}

        st=rpcc();
        athread_spawn(func2,0);//fflush(NULL);
        athread_join();
        ed=rpcc();
        cnt3=ed-st;
        perf=((double)(cnt2-cnt3)/(double)cnt2)*100;
        if(myid==0){
          printf("the manycore-double counter=%ld\n",cnt3);
          printf("the double counter=%lf\%\n",perf);
        }

        if(myid==0){printf("!!!!!!!!!! END JOIN !!!!!!!!!\n");fflush(NULL);}

        checksum_master=0.0;
        checksum1=0.0;
        checksum2=0.0;
	for(j=0;j<J;j++)
	for(k=0;k<K;k++)
 	for(i=0;i<I;i++){
  		checksum_master=checksum_master+cc[j][k][i];
  		checksum1=checksum1+c1[j][k][i];
  		checksum2=checksum2+c2[j][k][i];
	}
      
        if(myid==0){
                printf("the master value is %lf!\n",checksum_master);
                printf("the manycore value is %lf!\n",checksum1);
                printf("the manycore-double value is %lf!\n",checksum2);                
        }

        athread_halt();      
        if(myid==0){printf("!!!!!!!!!! END HALT !!!!!!!!!\n");fflush(NULL);}
  
        MPI_Finalize();

}    
