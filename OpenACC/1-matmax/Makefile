fc  = swafort
cc  = swacc


	 
exefile=matmax
OBJS=matmax.o rt_timer.o
all:  $(exefile)
$(exefile):$(OBJS)
	 $(fc)  -o $@ $(OBJS) 

rt_timer.o:rt_timer.c
	$(cc)  -c $<
matmax.o:matmax.f90
	$(fc) -O3 -c $<
clean:      
	   - rm -f matmax *.o  *_slave* *_host*
