#########################################################################
# File Name: run.sh
# Author: Wang Xinliang
# mail: clarencewxl@gmail.com
# Created Time: Thu 29 Sep 2016 02:41:40 PM CST
#########################################################################
#!/bin/bash

bsub -I -b -q q_sw_expr -n 1 -np 1 -cgsp 64 -host_stack 256 -share_size 6500 -cross_size 0 ./example 2D5   4000 4000 1
bsub -I -b -q q_sw_expr -n 1 -np 1 -cgsp 64 -host_stack 256 -share_size 6500 -cross_size 0 ./example 2D5   2000 2000 1
bsub -I -b -q q_sw_expr -n 1 -np 1 -cgsp 64 -host_stack 256 -share_size 6500 -cross_size 0 ./example 2D5   1000 1000 1
bsub -I -b -q q_sw_expr -n 1 -np 1 -cgsp 64 -host_stack 256 -share_size 6500 -cross_size 0 ./example 2D5   500  500  1


