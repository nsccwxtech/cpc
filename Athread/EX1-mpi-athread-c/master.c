#include <stdlib.h>
#include <stdio.h>
#include <athread.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "mpi.h"

extern SLAVE_FUN(func)();


static inline unsigned long rpcc()
{
        unsigned long time;
        asm("rtc %0": "=r" (time) : );
        return time;
}

#define J 64
#define I 1000


double a[J][I],b[J][I],c[J][I],cc[J][I];
double check[J];
unsigned long counter[J];

int main(int argc, char**argv)
{
  	int i,j; 
        double checksum;
        double checksum2;
        unsigned long st,ed;

        int myid, numprocs;

        MPI_Init(&argc,&argv);
        MPI_Comm_size(MPI_COMM_WORLD,&numprocs);
        MPI_Comm_rank(MPI_COMM_WORLD,&myid);

        if(myid==0){printf("!!!!!! C-EXAMPLE TOTAL PROCS is %d !!!!!!\n",numprocs);fflush(NULL);}
        if(myid==0){printf("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");fflush(NULL);}
	for(j=0;j<J;j++)
 	for(i=0;i<I;i++){
  		a[j][i]=(i+j+0.5);
	  	b[j][i]=(i+j+1.0);
	}
        st=rpcc();
	for(j=0;j<J;j++)
 	for(i=0;i<I;i++){
  		cc[j][i]=(a[j][i])/(b[j][i]);
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
  		checksum=checksum+c[j][i];
  		checksum2=checksum2+cc[j][i];
	}
      
        if(myid==0){
                printf("the master value is %f!\n",checksum2);
                printf("the manycore value is %f!\n",checksum);
        }

        athread_halt();      
        if(myid==0){printf("!!!!!!!!!! END HALT !!!!!!!!!\n");fflush(NULL);}
  
        MPI_Finalize();

}    
