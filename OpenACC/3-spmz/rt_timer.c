#include <sys/time.h>
#include <stdlib.h>

void timer_start(struct timeval *);
void timer_end(double *,struct timeval *);

void timer_start(struct timeval *timev)
{
    gettimeofday(timev, 0L);
}
void timer_start_(struct timeval *timev)
{
    gettimeofday(timev, 0L);
}
void timer_end(double *sec,struct timeval *timev)
{
    struct timeval t;

    gettimeofday(&t, 0L);
    *sec = 1.0*(t.tv_sec-timev->tv_sec) + 0.000001*(t.tv_usec-timev->tv_usec);
}
void timer_end_(double *sec,struct timeval *timev)
{
    struct timeval t;

    gettimeofday(&t, 0L);
    *sec = 1.0*(t.tv_sec-timev->tv_sec) + 0.000001*(t.tv_usec-timev->tv_usec);
}



static unsigned long next = 1;

/* RAND_MAX assumed to be 32767 */
unsigned long get_rand_(void) {
    next = next * 1103515245 + 12345;
    return next%0x7fffffffffffffff;
}

void init_rand_(unsigned *seed) {
    next = *seed;
}
