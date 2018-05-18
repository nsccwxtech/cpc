fc  = swafort
cc  = swacc


	 
exefile=matmul
OBJS=matmul.o rt_timer.o
all:  $(exefile)
$(exefile):$(OBJS)
	 $(fc)  -o $@ $(OBJS) 

rt_timer.o:rt_timer.c
	$(cc)  -c $<
matmul.o:matmul.c
	$(cc) -O3 -c $<
clean:      
	   - rm -f matmul *.o  *_slave* *_host*
