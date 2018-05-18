bsub -perf -I -b -m 1  -q q_sw_expr -host_stack 1024  -share_size 4096 -n 1 -cgsp 64 ./slave
