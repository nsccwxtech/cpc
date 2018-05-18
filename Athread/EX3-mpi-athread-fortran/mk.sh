sw5cc -host -c rpcc.c
sw5f90 -host -I/usr/sw-mpp/mpi2/include -c master.f90

sw5f90 -slave -g -msimd -mp -c reply_wait.f90
sw5cc -slave -msimd -c DMA_getid.c
sw5f90 -slave -O3 -c slave.f90

mpif90 master.o slave.o rpcc.o DMA_getid.o reply_wait.o -o example-fortran


