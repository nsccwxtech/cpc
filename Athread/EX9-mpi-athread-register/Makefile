default:example fact

MC = mpicc
CC = sw5cc.old

MCFLAGS = -O3 -msimd 
CCFLAGS = -O3 -msimd 
LIBS    = -hybrid -lslave

MOBJS = func_2D5.o 
COBJS = func_2D5_slave.o 

fact:fact.o $(MOBJS) $(COBJS)
	$(MC) $(LIBS) fact.o $(MOBJS) $(COBJS) -o $@
	ctags -R ./*
example:solve.o $(MOBJS) $(COBJS)
	$(MC) $(LIBS) solve.o $(MOBJS) $(COBJS) -o $@
	ctags -R ./*
func_2D5_slave.o:func_2D5_slave.S
	$(CC) $(CCFLAGS) -c $< -o $@
func_2D5_slave.S:func_2D5_slave.c
	$(CC) $(CCFLAGS) -S $< -o $@
%.o:%.c
	$(MC) $(MCFLAGS) -c $< -o $@

clean:
	rm -rf *.o example fact
clear:
	rm -rf *.o *.S example fact 

run: example fact
	sh ./run.sh
