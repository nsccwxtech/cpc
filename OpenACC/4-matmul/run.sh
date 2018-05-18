QUEUE=q_sw_expr
echo bsub -b -q $QUEUE -I  -n 1 -cgsp 64 -share_size 6000 ./matmul
bsub -b -q $QUEUE -I -n 1 -cgsp 64 -share_size 6000 ./matmul
