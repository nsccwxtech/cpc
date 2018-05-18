void rpcc_(unsigned long *counter)
{
        unsigned long rpcc;
        asm("rtc %0": "=r" (rpcc) : );
        *counter=rpcc;
}

