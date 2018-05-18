bsub -b -I -q q_sw_expr -n 5 -np 1 -cgsp 64 -sw3runarg "-a 1" -host_stack 256 -cross_size 17000 ./sw5.hybrid
