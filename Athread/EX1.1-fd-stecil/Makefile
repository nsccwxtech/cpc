CC=sw5cc

laplace2d: fd.o fd_slave.o
	${CC} -hybrid  fd.o fd_slave.o -o fd

fd.o: fd.c
	${CC} -host fd.c  -c  -lm 

fd_slave.o: fd_slave.c
	${CC} -slave fd_slave.c  -c 



clean:
	rm -Rf fd *.o
