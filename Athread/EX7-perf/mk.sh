 sw5cc -host -cpp -I/usr/sz/swcc/sw3gcc-binary/include -c master.c
 sw5cc -slave -DTEST -DCHECK -c slave.c
 sw5cc -hybrid master.o slave.o -lswperf -Wl,-zmuldefs -o slave
