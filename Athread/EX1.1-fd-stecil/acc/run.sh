#!/bin/bash

set -x

bsub -b -I -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6000 ./a.out


