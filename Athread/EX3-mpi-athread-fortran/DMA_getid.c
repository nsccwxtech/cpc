#include "simd.h"
#include <slave.h> 
#include <math.h>
#include <stdio.h>
#include "simd.h"
#define ULONG unsigned long
__thread_local unsigned long dma_mask=0xffffffffff;


void get_myid_(int *core_id){  
int row,col;
asm volatile("rcsr   %0, 1" : "=r"(row));
asm volatile("rcsr   %0, 2" : "=r"(col));
*core_id=row*8+col+1;
}


void sync_array_(){

    int256 sync_tmp;
    asm volatile(\
        "ldi    %0, 0xff\n"   \
        "sync   %0\n"   \
        "synr   %0\n"   \
        :   \
        :"r"(sync_tmp):"memory");
}

void rtc_slave_(unsigned long *a){

   *a=RTC();

}

void rtc_(unsigned long *counter)
{
        unsigned long rpcc;
        asm volatile("rcsr  %0, 4":"=r"(rpcc));
        *counter=rpcc;
}
