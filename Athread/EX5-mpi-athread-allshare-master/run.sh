bsub -b -I -q q_sw_expr -n 5 -cgsp 64 -allmaster -host_stack0 256 -cross_size0 17000 -host_stack 256 -cross_size 2500 ./example-master
