fc  = swafort
cc  = swacc


	 
exefile=spmz
OBJS=spmz.o rt_timer.o
all:  $(exefile)
$(exefile):$(OBJS)
	 $(fc)  -o $@ $(OBJS) 

rt_timer.o:rt_timer.c
	$(cc)  -c $<
spmz.o:spmz.f90
	$(fc) -O3 -c $<
clean:      
	   - rm -f spmz *.o  *_slave* *_host*
