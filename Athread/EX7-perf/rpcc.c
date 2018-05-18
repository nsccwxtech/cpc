
static inline unsigned long rpcc()
{
        unsigned long time;
        asm("rtc %0": "=r" (time) : );
        return time;
}
