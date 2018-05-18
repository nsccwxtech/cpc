#!/usr/bash

set -x

sw5cc -host  -c master.c
sw5cc -slave -c slave.c
mpicc master.o slave.o -o example-c
