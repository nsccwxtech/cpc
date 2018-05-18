sw5CC -host -I/usr/sw-mpp/mpi2/include -c master.cpp
sw5cc -slave -c slave.c
mpiCC master.o slave.o -lstdc++ -o example-cpp
