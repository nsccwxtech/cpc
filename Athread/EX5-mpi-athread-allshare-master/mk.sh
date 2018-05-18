sw5cc -host -I/usr/sw-mpp/mpi2/include -c master.c  
sw5cc -slave -c slave.c
mpicc master.o slave.o -o example-master -allshare
