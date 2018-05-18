#include <stdio.h>
#include <math.h>
#include <string.h>
#include "slave.h"

#define J 64
#define K 64
#define I 256

__thread_local volatile unsigned long get_reply,put_reply;
__thread_local volatile unsigned long get_reply2[2],put_reply2[2];
__thread_local volatile unsigned long start,end;

__thread_local int my_id;

__thread_local double a_slave[I],b_slave[I],c_slave[I];
__thread_local double aa_slave[2][I],bb_slave[2][I],cc_slave[2][I];

extern double a[J][K][I],b[J][K][I],c1[J][K][I],c2[J][K][I];
extern unsigned long counter[64];
      
void func1()
{
        int i,k,j;

        my_id = athread_get_id(-1);
        
        for(j = my_id; j < J; j = j + 64){
        for(k = 0; k < K; k++){
	  get_reply = 0;
	  athread_get(PE_MODE,&a[j][k][0],&a_slave[0],I*8,&get_reply,0,0,0);
	  athread_get(PE_MODE,&b[j][k][0],&b_slave[0],I*8,&get_reply,0,0,0);
	  while(get_reply!=2);
       
          for(i=0;i<I;i++){
            c_slave[i]=a_slave[i]/b_slave[i]+fabs(sqrt(a_slave[i])-sqrt(b_slave[i]))/2.34;
            c_slave[i]=b_slave[i]/a_slave[i]+fabs(sqrt(a_slave[i])-sqrt(b_slave[i]))/2.34;
          }

	  put_reply=0;
	  athread_put(PE_MODE,&c_slave[0],&c1[j][k][0],I*8,&put_reply,0,0);
          while(put_reply!=1);	
        }
        }
}

void func2()
{
        int i,k,j;
        int index,next,last;

        my_id = athread_get_id(-1);
        for(j = my_id; j < J; j = j + 64){
          for(k = 0; k < K; k++){
            index=k%2;
            next=(k+1)%2;
            last=(k-1)%2; 
            
            if(k==0){
	      get_reply2[index] = 0;
	      athread_get(PE_MODE,&a[j][k][0],&aa_slave[index][0],I*8,&get_reply2[index],0,0,0);
	      athread_get(PE_MODE,&b[j][k][0],&bb_slave[index][0],I*8,&get_reply2[index],0,0,0);
            }
            if(k<K-1){
	      get_reply2[next] = 0;
	      athread_get(PE_MODE,&a[j][k+1][0],&aa_slave[next][0],I*8,&get_reply2[next],0,0,0);
	      athread_get(PE_MODE,&b[j][k+1][0],&bb_slave[next][0],I*8,&get_reply2[next],0,0,0);
            }
	    while(get_reply2[index]!=2);
     
            for(i=0;i<I;i++){
              cc_slave[index][i]=aa_slave[index][i]/bb_slave[index][i]+fabs(sqrt(aa_slave[index][i])-sqrt(bb_slave[index][i]))/2.34;
              cc_slave[index][i]=bb_slave[index][i]/aa_slave[index][i]+fabs(sqrt(aa_slave[index][i])-sqrt(bb_slave[index][i]))/2.34;
            }

	    put_reply2[index]=0;
	    athread_put(PE_MODE,&cc_slave[index][0],&c2[j][k][0],I*8,&put_reply2[index],0,0);
            if(k>0)   {            while(put_reply2[last]!=1);	}
            if(k==K-1){            while(put_reply2[index]!=1);	}
          }
        }
}
