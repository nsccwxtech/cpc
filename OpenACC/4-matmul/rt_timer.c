#include <sys/time.h>

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
