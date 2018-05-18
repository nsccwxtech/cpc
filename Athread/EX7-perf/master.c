#include <stdlib.h>
#include <stdio.h>
#include <athread.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

extern SLAVE_FUN(func)();


static inline unsigned long rpcc()
{
        unsigned long time;
        asm("rtc %0": "=r" (time) : );
        return time;
}

#define J 64
#define I 2000


double a[J][I],b[J][I],c[J][I],cc[J][I];
double check[J];
unsigned long counter[J];

int main(void)
{
  	int i,j; 
        double checksum;
        double checksum2;
        unsigned long st,ed;

  	printf("!!!!!!!!!! BEGIN INIT !!!!!!!!!!\n");fflush(NULL);
	for(j=0;j<J;j++)
 	for(i=0;i<I;i++){
  		a[j][i]=(i/1000.0+j+0.5);
	  	b[j][i]=(i/1000.0+j+1.0);
	}
        st=rpcc();
	for(j=0;j<J;j++)
 	for(i=0;i<I;i++){
  		cc[j][i]=(a[j][i])/(b[j][i])+a[j][i]*b[j][i]+b[j][i]/a[j][i];
	}
        ed=rpcc();
        printf("the host counter=%ld\n",ed-st);

        checksum=0.0;
        checksum2=0.0;
	athread_init();

        st=rpcc();
	penv_slave_float_ipc_init();
        athread_spawn(func,0);//fflush(NULL);
        athread_join();

        ed=rpcc();
        printf("the manycore counter=%ld\n",ed-st);

        printf("!!!!!!!!!! END JOIN !!!!!!!!!\n");fflush(NULL);

	for(j=0;j<J;j++)
 	for(i=0;i<I;i++){
  		checksum=checksum+c[j][i];
  		checksum2=checksum2+cc[j][i];
	}
      
        printf("the master value is %f!\n",checksum2);
        printf("the manycore value is %f!\n",checksum);

        athread_halt();      
        printf("!!!!!!!!!! END HALT !!!!!!!!!\n");fflush(NULL);

}    
