#include <stdio.h>
#include <math.h>
#include <string.h>
#include "slave.h"

#define J 64
#define I 2000

__thread_local volatile unsigned long get_reply,put_reply;
__thread_local volatile unsigned long start,end;

__thread_local int my_id;

__thread_local double a_slave[I],b_slave[I],c_slave[I];

extern double a[J][I],b[J][I],c[J][I];
extern unsigned long counter[64];
      
void func()
{
        int i,j;
	long ic0,ic1;
	long tc0, tc1;

	penv_slave_float_ipc_count(&ic0,&tc0);
        my_id = athread_get_id(-1);
        
	get_reply = 0;
	athread_get(PE_MODE,&a[my_id][0],&a_slave[0],I*8,&get_reply,0,0,0);
	athread_get(PE_MODE,&b[my_id][0],&b_slave[0],I*8,&get_reply,0,0,0);
	while(get_reply!=2);
      
       
        for(i=0;i<I;i++){
                c_slave[i]=a_slave[i]/b_slave[i]+a_slave[i]*b_slave[i]+b_slave[i]/a_slave[i];
        }

	put_reply=0;
	athread_put(PE_MODE,&c_slave[0],&c[my_id][0],I*8,&put_reply,0,0);
        while(put_reply!=1);
	penv_slave_float_ipc_count(&ic1,&tc1);

	if(my_id==0) printf("ThreadID= %d, rate= %f (%ld/%ld);\n", my_id, ((double)(ic1-ic0)/(double)(tc1-tc0)/8.0),ic1-ic0,tc1-tc0);
	
}
