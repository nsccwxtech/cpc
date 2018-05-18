fc  = swafort
cc  = swacc


	 
exefile=matadd
OBJS=matadd.o rt_timer.o
all:  $(exefile)
$(exefile):$(OBJS)
	 $(fc)  -o $@ $(OBJS) 

rt_timer.o:rt_timer.c
	$(cc)  -c $<
matadd.o:matadd.c
	$(cc) -O3 -c $<
clean:      
	   - rm -f matadd *.o  *_slave* *_host*
