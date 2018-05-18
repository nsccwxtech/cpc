#include <stdio.h>
#include <math.h>
#include <string.h>
#include "slave.h"

#define J 64
#define I 1000

__thread_local volatile unsigned long get_reply,put_reply;
__thread_local volatile unsigned long start,end;

__thread_local int my_id;

__thread_local double a_slave[I],b_slave[I],c_slave[I];

extern double a1[J][I],b1[J][I],c1[J][I];
extern unsigned long counter[64];
      
void func()
{
        int i,j;

        my_id = athread_get_id(-1);
        
	get_reply = 0;
	athread_get(PE_MODE,&a1[my_id][0],&a_slave[0],I*8,&get_reply,0,0,0);
	athread_get(PE_MODE,&b1[my_id][0],&b_slave[0],I*8,&get_reply,0,0,0);
	while(get_reply!=2);
      
       
        for(i=0;i<I;i++){
                c_slave[i]=a_slave[i]/b_slave[i];
        }

	put_reply=0;
	athread_put(PE_MODE,&c_slave[0],&c1[my_id][0],I*8,&put_reply,0,0);
        while(put_reply!=1);	
}
