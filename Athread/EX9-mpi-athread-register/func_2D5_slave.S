	.set noreorder
	.set noat
	.arch sw3
	#  /usr/sw-mpp/swcc/lib/gcc-lib/sw_64-swcc-linux/5.296-53/be::5.296-53

	#-----------------------------------------------------------
	# Compiling func_2D5_slave.c (/tmp/ccI.gJ4Bpi)
	#-----------------------------------------------------------

	#-----------------------------------------------------------
	# Options:
	#-----------------------------------------------------------
	#  Target:SW3, ISA:ISA_1, Pointer Size:64
	#  -O3	(Optimization level)
	#  -g0	(Debug level)
	#  -m1	(Report warnings)
	#-----------------------------------------------------------


	.section .tdata, "wa", "progbits"
	.align	0

	.section .tdata_local_fix, "wa", "progbits"
	.align	5

	.section .text1, "ax", "progbits"
	.align	4
	.section .text1

	# Program Unit: magic_touch_long_long
	.align 4
	.ent	magic_touch_long_long#
	.globl	magic_touch_long_long
magic_touch_long_long:	# 0x0
	# return_address = 0
#Block: 1 Pred: Succ: 
	.file	1 "/home/export/online1/systest/swyyz/EXAMPLE/CPC-example/EX9-mpi-athread-register/func_2D5_slave.c"
	.loc	1	20	0
#  16  static inline int EMPTY_GETC(void) { int var; asm volatile ("rcsr %0,0x35\n":"=r"(var)); return var; }
#  17  static inline int FULL_PUT(void) { int var; asm volatile ("rcsr %0,0x36\n":"=r"(var)); return var; }
#  18  
#  19  void magic_touch_long_long(int *v)
#  20  {
.L_BB1_magic_touch_long_long:	# 0x0
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq>
	ldih	$gp,0($27)               	!gpdisp!1	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!1	# [1]  0
	
$ng..magic_touch_long_long:
	ldi	$sp,-32($sp)              	# [2]  
	.loc	1	21	0
#  21  	return;
	ldi	$sp,32($sp)               	# [3]  
	ret	$31,($26),1               	# [3]  
.L_CC_magic_touch_long_long:
#PU cycle count: 4.000000
	.end	magic_touch_long_long
	.section .text1
	.align 4

	# Program Unit: stest
	.align 4
	.ent	stest#
	.globl	stest
stest:	# 0x20
	# return_address = 0
#Block: 1 Pred: Succ: 
	.loc	1	25	0
#  22  }
#  23  
#  24  void stest()
#  25  {
.L_BB1_stest:	# 0x20
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq>
	ldih	$gp,0($27)               	!gpdisp!2	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!2	# [1]  0
	
$ng..stest:
	ldi	$sp,-32($sp)              	# [2]  
	.loc	1	30	0
#  26  #ifdef _MYID
#  27  	if(_MYID == 0)
#  28  		printf("Hello World from %d\n", _MYID);
#  29  #endif
#  30  }
	ldi	$sp,32($sp)               	# [3]  
	ret	$31,($26),1               	# [3]  
.L_CC_stest:
#PU cycle count: 4.000000
	.end	stest

	.section .rodata, "a", "progbits"
	.align	3
	.section .text1
	.align 4

	# Program Unit: sequential_2D5_slave_kernel
	.align 4
	.ent	sequential_2D5_slave_kernel#
	.globl	sequential_2D5_slave_kernel
sequential_2D5_slave_kernel:	# 0x40
	# reply = 40
	# COUNT = 44
	# dma_get = 64
	# dma_put = 96
	# LX = -35072
	# LA = -17664
	# pad_0 = -35072
	# pad_1 = -17664
	# return_address = 0
	# reserved_spill_temp_0 = 32
	# gra_spill_temp_1 = 128
	# gra_spill_temp_2 = 136
	# gra_spill_temp_3 = 144
	# gra_spill_temp_4 = 152
	# gra_spill_temp_5 = 160
	# gra_spill_temp_6 = 168
	# gra_spill_temp_7 = 176
	# gra_spill_temp_8 = 184
	# gra_spill_temp_9 = 192
	# gra_spill_temp_10 = 200
	# gra_spill_temp_11 = 208
	# gra_spill_temp_12 = 216
	# gra_spill_temp_13 = 224
	# gra_spill_temp_14 = 232
	# gra_spill_temp_15 = 240
	# gra_spill_temp_16 = 248
	# gra_spill_temp_17 = 256
	# gra_spill_temp_18 = 264
	# gra_spill_temp_19 = 272
	# gra_spill_temp_20 = 280
	# gra_spill_temp_21 = 288
	# gra_spill_temp_22 = 296
	# gra_spill_temp_23 = 304
	# lgra_spill_temp_v_24 = 320
#Block: 1 Pred: Succ: 2 23 
	.loc	1	33	0
#  31  
#  32  void sequential_2D5_slave_kernel(double *X, double *A, double *B, int M, int N, int L)
#  33  {
.L_BB1_sequential_2D5_slave_kernel:	# 0x40
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq> BB:1 => BB:2 probability = 0.97590
#<freq> BB:1 => BB:23 probability = 0.02410
#<freq>
	ldih	$gp,0($27)               	!gpdisp!3	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!3	# [1]  0
	
$ng..sequential_2D5_slave_kernel:
	vfmov	$20,$23                 	# [2]  
	ldi	$0,-30112($31)            	# [2]  
	ldih	$0,1($0)                 	# [3]  
	vfmov	$15,$24                 	# [3]  
	subl	$sp,$0,$sp               	# [4]  
	.file	2 "/usr/sw-mpp/swcc/lib/gcc-lib/sw_64-swcc-linux/5.296-53/include/dma.h"
	.loc	2	79	0
#  75  
#  76  static __inline void 
#  77  dma_set_op(dma_desc *a, unsigned int op)
#  78  {
#  79  	((dma_desc_u *)a)->packed.dma_op = op;
	ornot	$31,$31,$22             	# [4]  
	.loc	1	33	0
	stl	$14,136($sp)              	# [5]  gra_spill_temp_2
	.loc	2	79	0
	srl	$22,60,$22                	# [5]  
	ldw	$14,100($sp)              	# [6]  dma_put+4
#	.spillsp $14, 0
	sll	$22,24,$22                	# [6]  
	.loc	1	33	0
	stl	$13,176($sp)              	# [7]  gra_spill_temp_7
	.loc	2	79	0
	mov	1,$13                     	# [7]  
	sll	$13,24,$13                	# [8]  
	.loc	2	85	0
#  81  
#  82  static __inline void 
#  83  dma_set_mode(dma_desc *a, unsigned int mode)
#  84  {
#  85  	((dma_desc_u *)a)->packed.dma_mode = mode;
#	.spillsp $13, 0
	ldi	$21,-1($31)               	# [8]  
	.loc	1	33	0
	stl	$23,232($sp)              	# [9]  gra_spill_temp_14
	.loc	2	79	0
	and	$13,$22,$13               	# [9]  
	ldw	$23,68($sp)               	# [10]  dma_get+4
	.loc	2	85	0
	ldih	$21,4096($21)            	# [10]  
	.loc	2	79	0
	andnot	$14,$22,$14            	# [11]  
	.loc	1	33	0
	addl	$sp,$0,$15               	# [11]  
	.loc	2	85	0
	and	$14,$21,$14               	# [12]  
	.loc	1	33	0
	ldi	$0,40($sp)                	# [12]  reply
	.loc	1	36	0
#  34  #define HALO 4
#  35  #define MLEN 1000
#  36  	volatile int reply = 0;
#	.vframe $15
	stw	$31,40($sp)               	# [13]  reply
	.loc	2	79	0
	andnot	$23,$22,$23            	# [14]  
	or	$13,$23,$13                	# [15]  
	.loc	1	37	0
#  37  	volatile int COUNT = 0;
	stw	$31,44($sp)               	# [15]  COUNT
	.loc	2	85	0
	and	$13,$21,$13               	# [16]  
	.loc	2	73	0
	sth	$0,72($sp)                	# [16]  dma_get+8
	.loc	2	85	0
	stw	$13,68($sp)               	# [17]  dma_get+4
	.loc	2	73	0
	sth	$0,104($sp)               	# [18]  dma_put+8
	.loc	2	85	0
	stw	$14,100($sp)              	# [19]  dma_put+4
	.loc	1	33	0
	stl	$24,152($sp)              	# [20]  gra_spill_temp_4
	stl	$9,192($sp)               	# [21]  gra_spill_temp_9
	stl	$10,184($sp)              	# [22]  gra_spill_temp_8
#	.spillsp $15, 0
	stl	$11,160($sp)              	# [23]  gra_spill_temp_5
#	.spillsp $9, 0
	stl	$12,144($sp)              	# [24]  gra_spill_temp_3
#	.spillsp $10, 0
	stl	$26,168($sp)              	# [25]  gra_spill_temp_6
	.prologue
#	.spillsp $11, 0
	stl	$18,216($sp)              	# [26]  gra_spill_temp_12
#	.spillsp $12, 0
	stl	$17,208($sp)              	# [27]  gra_spill_temp_11
#	.savesp $26, 0
	stl	$16,200($sp)              	# [28]  gra_spill_temp_10
	.loc	2	103	0
#  99  
# 100  static __inline void 
# 101  dma_set_stepsize(dma_desc *a, unsigned int bleng)
# 102  {
# 103  	((dma_desc_u *)a)->packed.stride_length = bleng;
	stw	$31,108($sp)              	# [29]  dma_put+12
	stw	$31,76($sp)               	# [30]  dma_get+12
	.loc	2	73	0
#<bpre> branch predict not taken
	ble	$20,.Lt_2_36              	# [31]  
#Block: 2 Pred: 1 Succ: 4 
.L_BB2_sequential_2D5_slave_kernel:	# 0x100
#<freq>
#<freq> BB:2 frequency = 0.97590 (heuristic)
#<freq>
	ldl	$1,232($sp)               	# [0]  gra_spill_temp_14
	ldi	$25,999($31)              	# [0]  
	ldi	$28,28312($31)            	# [1]  
	ldi	$22,30464($31)            	# [1]  
	ldih	$28,-31982($28)          	# [2]  
	ldih	$22,-1($22)              	# [2]  
	sll	$28,32,$28                	# [3]  
	ldw	$26,96($sp)               	# [3]  dma_put
	addw	$1,$25,$25               	# [4]  
	vfmov	$1,$2                   	# [4]  
	subw	$31,$25,$27              	# [5]  
	addl	$1,$1,$0                 	# [5]  
	selge	$25,$25,$27,$27         	# [6]  
	sextw	$0,$0                   	# [6]  
	umulh	$27,$28,$27             	# [7]  
	s8addl	$0,$31,$0              	# [7]  
	stl	$0,296($sp)               	# [8]  gra_spill_temp_22
	s8addl	$1,$31,$1              	# [8]  
	ldw	$20,64($sp)               	# [9]  dma_get
	ldi	$28,-17664($15)           	# [9]  LA.BLOCK
	stl	$1,304($sp)               	# [10]  gra_spill_temp_23
	addl	$15,$22,$22              	# [10]  
	stl	$2,264($sp)               	# [11]  gra_spill_temp_18
	ldi	$5,1000($31)              	# [11]  
	srl	$27,9,$27                 	# [12]  
	vfmov	$31,$9                  	# [12]  
	subw	$31,$27,$0               	# [13]  
	stl	$31,240($sp)              	# [13]  gra_spill_temp_15
	selge	$25,$27,$0,$25          	# [14]  
	cmplt	$31,$19,$27             	# [14]  
	stl	$27,224($sp)              	# [15]  gra_spill_temp_13
	stl	$25,128($sp)              	# [16]  gra_spill_temp_1
	stl	$31,248($sp)              	# [17]  gra_spill_temp_16
	stl	$31,256($sp)              	# [18]  gra_spill_temp_17
	br	$31,.Lt_2_40               	# [19]  
#Block: 22 Pred: 21 8 Succ: 23 4 
	.align	4
.Lt_2_47:	# 0x18c
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:22 frequency = 97.59036 (heuristic)
#<freq> BB:22 => BB:23 probability = 0.01000
#<freq> BB:22 => BB:4 probability = 0.99000
#<freq>
	.loc	1	63	0
#  59  						LA[j-HALO][0]*LX[1-id][j] - \
#  60  						LA[j-HALO][1]*LX[id][j-1]);
#  61  			WXL_DMA_NEW(dma_put, X+i*N+k, LX[id]+HALO, sizeof(double)*LEN, COUNT);
#  62  			dma_wait(&reply, COUNT);
#  63  			id = 1-id;
	ldl	$1,264($sp)               	# [0]  gra_spill_temp_18
	ldi	$2,-1000($31)             	# [0]  
	ldl	$27,248($sp)              	# [1]  gra_spill_temp_16
	ldi	$3,1000($31)              	# [1]  
	ldl	$0,232($sp)               	# [2]  gra_spill_temp_14
	addw	$1,$2,$1                 	# [4]  
	addw	$27,$3,$27               	# [5]  
	stl	$1,264($sp)               	# [5]  gra_spill_temp_18
	stl	$27,248($sp)              	# [6]  gra_spill_temp_16
	cmplt	$27,$0,$27              	# [6]  
	ldl	$0,240($sp)               	# [7]  gra_spill_temp_15
	ldl	$1,256($sp)               	# [8]  gra_spill_temp_17
	addw	$0,1,$0                  	# [11]  
	stl	$0,240($sp)               	# [12]  gra_spill_temp_15
	ldi	$1,8000($1)               	# [15]  
	stl	$1,256($sp)               	# [16]  gra_spill_temp_17
#<bpre> branch predict not taken
	beq	$27,.Lt_2_36              	# [17]  
#Block: 4 Pred: 22 2 Succ: 5 8 
.Lt_2_40:	# 0x1d0
#<loop> Loop body line 73, nesting depth: 1, estimated iterations: 100
#<freq>
#<freq> BB:4 frequency = 97.59036 (heuristic)
#<freq> BB:4 => BB:5 probability = 0.71053
#<freq> BB:4 => BB:8 probability = 0.28947
#<freq>
	.loc	2	73	0
	ldl	$23,264($sp)              	# [0]  gra_spill_temp_18
	ldi	$4,-3($31)                	# [0]  
	cmplt	$23,$5,$21              	# [4]  
	seleq	$21,$5,$23,$21          	# [5]  
	cmplt	$21,$4,$4               	# [6]  
#<bpre> branch predict not taken
	bne	$4,.Lt_2_41               	# [7]  
#Block: 5 Pred: 4 Succ: 24 
.L_BB5_sequential_2D5_slave_kernel:	# 0x1e8
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:5 frequency = 69.34052 (heuristic)
#<freq>
	vfmov	$31,$4                  	# [0]  
	addw	$21,4,$7                 	# [0]  
	vfmov	$22,$6                  	# [1]  
#Block: 24 Pred: 5 Succ: 28 27 
.L_BB24_sequential_2D5_slave_kernel:	# 0x1f4
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:24 frequency = 69.34052 (heuristic)
#<freq> BB:24 => BB:28 probability = 0.75000
#<freq> BB:24 => BB:27 probability = 0.25000
#<freq>
	and	$7,3,$8                   	# [0]  
#<bpre> branch predict not taken
	beq	$8,.L_BB27_sequential_2D5_slave_kernel 	# [1]  
#Block: 28 Pred: 24 Succ: 27 29 
.L_BB28_sequential_2D5_slave_kernel:	# 0x1fc
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<loop> Unrolling remainder loop (at most 3 iterations)
#<freq>
#<freq> BB:28 frequency = 52.00539 (heuristic)
#<freq> BB:28 => BB:27 probability = 0.33333
#<freq> BB:28 => BB:29 probability = 0.66667
#<freq>
	subw	$8,1,$8                  	# [0]  
	.loc	1	49	0
	ldi	$6,8($22)                 	# [0]  
	addw	$31,1,$4                 	# [1]  
	fstd	$9,0($22)                	# [1]  id:103 not_variable+0x0
#<bpre> branch predict not taken
	beq	$8,.L_BB27_sequential_2D5_slave_kernel 	# [2]  
#Block: 29 Pred: 28 Succ: 27 30 
.L_BB29_sequential_2D5_slave_kernel:	# 0x210
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:29 frequency = 34.67026 (heuristic)
#<freq> BB:29 => BB:27 probability = 0.50000
#<freq> BB:29 => BB:30 probability = 0.50000
#<freq>
	subw	$8,1,$24                 	# [0]  
	ldi	$6,16($22)                	# [0]  
	mov	2,$4                      	# [1]  
	fstd	$9,8($22)                	# [1]  id:103 not_variable+0x0
#<bpre> branch predict unknown
	beq	$24,.L_BB27_sequential_2D5_slave_kernel 	# [2]  
#Block: 30 Pred: 29 Succ: 27 
.L_BB30_sequential_2D5_slave_kernel:	# 0x224
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:30 frequency = 17.33513 (heuristic)
#<freq>
	ldi	$6,24($22)                	# [0]  
	mov	3,$4                      	# [0]  
	fstd	$9,16($22)               	# [1]  id:103 not_variable+0x0
#Block: 27 Pred: 24 28 29 30 Succ: 32 31 
.L_BB27_sequential_2D5_slave_kernel:	# 0x230
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:27 frequency = 69.34052 (heuristic)
#<freq> BB:27 => BB:32 probability = 0.99602
#<freq> BB:27 => BB:31 probability = 0.00398
#<freq>
	sra	$7,2,$8                   	# [0]  
#<bpre> branch predict not taken
	beq	$8,.L_BB31_sequential_2D5_slave_kernel 	# [1]  
#Block: 32 Pred: 27 Succ: 26 
.L_BB32_sequential_2D5_slave_kernel:	# 0x238
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:32 frequency = 69.06426 (heuristic)
#<freq>
#Block: 26 Pred: 26 32 Succ: 26 33 
	.align	4
.L_BB26_sequential_2D5_slave_kernel:	# 0x238
#<loop> Loop body line 73, nesting depth: 2, estimated iterations: 251
#<loop> unrolled 4 times
#<freq>
#<freq> BB:26 frequency = 13036.01758 (heuristic)
#<freq> BB:26 => BB:26 probability = 0.99602
#<freq> BB:26 => BB:33 probability = 0.00398
#<freq>
	addw	$4,4,$4                  	# [0]  
	fstd	$9,24($6)                	# [0]  id:103 not_variable+0x0
	cmpeq	$4,$7,$25               	# [1]  
	fstd	$9,16($6)                	# [1]  id:103 not_variable+0x0
	fstd	$9,8($6)                 	# [2]  id:103 not_variable+0x0
	fstd	$9,0($6)                 	# [3]  id:103 not_variable+0x0
	ldi	$6,32($6)                 	# [3]  
#<bpre> branch predict taken
	beq	$25,.L_BB26_sequential_2D5_slave_kernel 	# [4]  
#Block: 33 Pred: 26 Succ: 31 
.L_BB33_sequential_2D5_slave_kernel:	# 0x258
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:33 frequency = 51.93633 (heuristic)
#<freq>
#Block: 31 Pred: 27 33 Succ: 25 
.L_BB31_sequential_2D5_slave_kernel:	# 0x258
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:31 frequency = 0.00000 (heuristic)
#<freq>
#Block: 25 Pred: 31 Succ: 8 
.L_BB25_sequential_2D5_slave_kernel:	# 0x258
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:25 frequency = 69.34052 (heuristic)
#<freq>
#Block: 8 Pred: 25 4 Succ: 9 22 
.Lt_2_41:	# 0x258
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:8 frequency = 97.59036 (heuristic)
#<freq> BB:8 => BB:9 probability = 0.92799
#<freq> BB:8 => BB:22 probability = 0.07201
#<freq>
	ldl	$27,224($sp)              	# [0]  gra_spill_temp_13
#<bpre> branch predict not taken
	beq	$27,.Lt_2_47.bpre         	# [4]  
#Block: 9 Pred: 8 Succ: 11 
.L_BB9_sequential_2D5_slave_kernel:	# 0x260
#<loop> Part of loop body line 73, head labeled .Lt_2_40
#<freq>
#<freq> BB:9 frequency = 90.56258 (heuristic)
#<freq>
	ldl	$24,248($sp)              	# [0]  gra_spill_temp_16
	s8addl	$21,$31,$12            	# [0]  
	ldl	$0,208($sp)               	# [1]  gra_spill_temp_11
	sll	$21,4,$18                 	# [1]  
	ldl	$17,240($sp)              	# [2]  gra_spill_temp_15
	sextw	$18,$18                 	# [2]  
	ldl	$25,256($sp)              	# [3]  gra_spill_temp_17
	sextw	$12,$12                 	# [3]  
	addl	$24,$24,$27              	# [4]  
	ldl	$10,200($sp)              	# [4]  gra_spill_temp_10
	sextw	$27,$27                 	# [5]  
	vfmov	$31,$11                 	# [5]  
	s8addl	$27,$0,$27             	# [6]  
	ldl	$0,216($sp)               	# [6]  gra_spill_temp_12
	cmpeq	$17,0,$17               	# [7]  
	mov	1,$23                     	# [7]  
	s8addl	$24,$10,$24            	# [8]  
	addl	$25,$10,$10              	# [8]  
	addl	$25,$0,$25               	# [10]  
	br	$31,.Lt_2_51               	# [10]  
#Block: 39 Pred: 45 Succ: 19 
.L_BB39_sequential_2D5_slave_kernel:	# 0x2b0
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:39 frequency = 9056.25781 (heuristic)
#<freq>
#Block: 19 Pred: 39 Succ: 48 21 
.L_BB19_sequential_2D5_slave_kernel:	# 0x2b0
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:19 frequency = 9056.25781 (heuristic)
#<freq> BB:19 => BB:48 probability = 0.75000
#<freq> BB:19 => BB:21 probability = 0.25000
#<freq>
	.loc	2	97	0
	srl	$14,20,$1                 	# [0]  
	sll	$12,44,$14                	# [0]  
	.loc	2	67	0
	srl	$26,24,$0                 	# [1]  
	sll	$12,40,$26                	# [1]  
	srl	$26,40,$26                	# [2]  
	sll	$0,24,$0                  	# [2]  
	.loc	2	97	0
	srl	$14,44,$14                	# [3]  
	sll	$1,20,$1                  	# [3]  
	or	$14,$1,$14                 	# [4]  
	.loc	2	67	0
	or	$26,$0,$26                 	# [4]  
	stw	$26,96($sp)               	# [5]  dma_put
	.loc	2	97	0
	stw	$14,100($sp)              	# [6]  dma_put+4
	.loc	1	61	0
	vldd	$2,96($sp)               	# [7]  dma_put
	dma	$2,$24,$16                	# [11]  
	ldw	$1,44($sp)                	# [12]  COUNT
	addw	$1,1,$1                  	# [16]  
	stw	$1,44($sp)                	# [17]  COUNT
	ldw	$4,44($sp)                	# [18]  COUNT
	ldw	$0,40($sp)                	# [19]  reply
	cmpeq	$4,$0,$0                	# [23]  
#<bpre> branch predict not taken
	bne	$0,.Lt_2_62               	# [24]  
#Block: 48 Pred: 19 Succ: 50 
.L_BB48_sequential_2D5_slave_kernel:	# 0x304
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:48 frequency = 6792.19336 (heuristic)
#<freq>
#Block: 50 Pred: 20 48 Succ: 49 51 
.L_BB50_sequential_2D5_slave_kernel:	# 0x304
#<loop> Loop body line 61
#<loop> unrolled 3 times
#<freq>
#<freq> BB:50 frequency = 18867.87305 (heuristic)
#<freq> BB:50 => BB:49 probability = 0.12000
#<freq> BB:50 => BB:51 probability = 0.88000
#<freq>
	ldw	$0,40($sp)                	# [0]  reply
	cmpeq	$4,$0,$0                	# [4]  
#<bpre> branch predict not taken
	bne	$0,.L_BB49_sequential_2D5_slave_kernel 	# [5]  
#Block: 51 Pred: 50 Succ: 49 20 
.L_BB51_sequential_2D5_slave_kernel:	# 0x310
#<loop> Part of loop body line 61, head labeled .L_BB50_sequential_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:51 frequency = 16603.72852 (heuristic)
#<freq> BB:51 => BB:49 probability = 0.12000
#<freq> BB:51 => BB:20 probability = 0.88000
#<freq>
	ldw	$1,40($sp)                	# [5]  reply
	cmpeq	$4,$1,$1                	# [9]  
#<bpre> branch predict not taken
	bne	$1,.L_BB49_sequential_2D5_slave_kernel 	# [10]  
#Block: 20 Pred: 51 Succ: 49 50 
.Lt_2_64:	# 0x31c
#<loop> Part of loop body line 61, head labeled .L_BB50_sequential_2D5_slave_kernel
#<freq>
#<freq> BB:20 frequency = 14611.28125 (heuristic)
#<freq> BB:20 => BB:49 probability = 0.12000
#<freq> BB:20 => BB:50 probability = 0.88000
#<freq>
	ldw	$2,40($sp)                	# [10]  reply
	cmpeq	$4,$2,$2                	# [14]  
#<bpre> branch predict taken
	beq	$2,.L_BB50_sequential_2D5_slave_kernel 	# [15]  
#Block: 49 Pred: 20 50 51 Succ: 21 
.L_BB49_sequential_2D5_slave_kernel:	# 0x328
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:49 frequency = 6792.19385 (heuristic)
#<freq>
#Block: 21 Pred: 49 19 Succ: 22 11 
.Lt_2_62:	# 0x328
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:21 frequency = 9056.25781 (heuristic)
#<freq> BB:21 => BB:22 probability = 0.01000
#<freq> BB:21 => BB:11 probability = 0.99000
#<freq>
	.loc	1	63	0
	ldl	$6,296($sp)               	# [0]  gra_spill_temp_22
	mov	1,$7                      	# [0]  
	ldl	$4,304($sp)               	# [1]  gra_spill_temp_23
	addw	$11,1,$11                	# [1]  
	cmpeq	$11,$19,$3              	# [2]  
	subw	$7,$23,$23               	# [2]  
	addl	$6,$27,$27               	# [4]  
	addl	$25,$4,$25               	# [5]  
	addl	$10,$4,$10               	# [6]  
	addl	$24,$4,$24               	# [6]  
#<bpre> branch predict not taken
	bne	$3,.Lt_2_47.bpre          	# [7]  
#Block: 11 Pred: 21 9 Succ: 12 13 
.Lt_2_51:	# 0x354
#<loop> Loop body line 49, nesting depth: 2, estimated iterations: 100
#<freq>
#<freq> BB:11 frequency = 9056.25781 (heuristic)
#<freq> BB:11 => BB:12 probability = 0.84000
#<freq> BB:11 => BB:13 probability = 0.16000
#<freq>
	.loc	2	67	0
	sll	$12,40,$1                 	# [0]  
	srl	$20,24,$2                 	# [0]  
	.loc	2	97	0
	sll	$12,44,$0                 	# [1]  
	srl	$13,20,$3                 	# [1]  
	sll	$3,20,$3                  	# [2]  
	srl	$0,44,$0                  	# [2]  
	.loc	2	67	0
	sll	$2,24,$2                  	# [3]  
	srl	$1,40,$1                  	# [3]  
	.loc	1	52	0
	sll	$23,5,$5                  	# [4]  
	.loc	2	67	0
	or	$1,$2,$1                   	# [4]  
	.loc	1	52	0
	s4subl	$5,$5,$4               	# [5]  
	.loc	2	97	0
	or	$0,$3,$0                   	# [5]  
	stw	$0,68($sp)                	# [6]  dma_get+4
	.loc	1	52	0
	s4addl	$4,$4,$4               	# [6]  
	.loc	2	67	0
	stw	$1,64($sp)                	# [7]  dma_get
	.loc	1	52	0
	s8subl	$5,$5,$6               	# [7]  
	vldd	$2,64($sp)               	# [8]  dma_get
	s4addl	$5,$6,$5               	# [8]  
	sll	$4,4,$4                   	# [9]  
	addl	$4,$5,$4                 	# [10]  
	addl	$22,$4,$4                	# [11]  
	ldi	$16,32($4)                	# [12]  
	dma	$2,$25,$16                	# [13]  
	.loc	2	67	0
	sll	$18,40,$20                	# [14]  
	srl	$1,24,$1                  	# [14]  
	.loc	2	97	0
	sll	$18,44,$13                	# [15]  
	srl	$0,20,$0                  	# [15]  
	sll	$0,20,$0                  	# [16]  
	srl	$13,44,$13                	# [16]  
	.loc	2	67	0
	sll	$1,24,$1                  	# [17]  
	srl	$20,40,$20                	# [17]  
	or	$20,$1,$20                 	# [18]  
	.loc	1	52	0
	ldw	$1,44($sp)                	# [18]  COUNT
	.loc	2	97	0
	or	$13,$0,$13                 	# [19]  
	.loc	2	67	0
	stw	$20,64($sp)               	# [19]  dma_get
	.loc	2	97	0
	stw	$13,68($sp)               	# [20]  dma_get+4
	.loc	1	52	0
	addw	$1,1,$1                  	# [22]  
	.loc	1	53	0
	vldd	$0,64($sp)               	# [23]  dma_get
	.loc	1	52	0
	stw	$1,44($sp)                	# [24]  COUNT
	.loc	1	53	0
	dma	$0,$27,$28                	# [27]  
	ldw	$8,44($sp)                	# [28]  COUNT
	addw	$8,1,$8                  	# [32]  
	stw	$8,44($sp)                	# [33]  COUNT
#<bpre> branch predict not taken
	beq	$17,.Lt_2_53              	# [34]  
#Block: 12 Pred: 11 Succ: 14 
.L_BB12_sequential_2D5_slave_kernel:	# 0x404
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:12 frequency = 7607.25635 (heuristic)
#<freq>
	.loc	1	54	0
	fstd	$9,24($4)                	# [0]  id:105 not_variable+0x0
#Block: 14 Pred: 12 13 Succ: 34 16 
.Lt_2_52:	# 0x408
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:14 frequency = 9056.25781 (heuristic)
#<freq> BB:14 => BB:34 probability = 0.75000
#<freq> BB:14 => BB:16 probability = 0.25000
#<freq>
	.loc	1	55	0
	ldw	$4,44($sp)                	# [39]  COUNT
	ldw	$2,40($sp)                	# [40]  reply
	cmpeq	$4,$2,$2                	# [44]  
#<bpre> branch predict not taken
	bne	$2,.Lt_2_54               	# [45]  
#Block: 34 Pred: 14 Succ: 36 
.L_BB34_sequential_2D5_slave_kernel:	# 0x418
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:34 frequency = 6792.19336 (heuristic)
#<freq>
#Block: 36 Pred: 15 34 Succ: 35 37 
.L_BB36_sequential_2D5_slave_kernel:	# 0x418
#<loop> Loop body line 55
#<loop> unrolled 3 times
#<freq>
#<freq> BB:36 frequency = 18867.87305 (heuristic)
#<freq> BB:36 => BB:35 probability = 0.12000
#<freq> BB:36 => BB:37 probability = 0.88000
#<freq>
	ldw	$3,40($sp)                	# [0]  reply
	cmpeq	$4,$3,$3                	# [4]  
#<bpre> branch predict not taken
	bne	$3,.L_BB35_sequential_2D5_slave_kernel 	# [5]  
#Block: 37 Pred: 36 Succ: 35 15 
.L_BB37_sequential_2D5_slave_kernel:	# 0x424
#<loop> Part of loop body line 55, head labeled .L_BB36_sequential_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:37 frequency = 16603.72852 (heuristic)
#<freq> BB:37 => BB:35 probability = 0.12000
#<freq> BB:37 => BB:15 probability = 0.88000
#<freq>
	ldw	$5,40($sp)                	# [5]  reply
	cmpeq	$4,$5,$5                	# [9]  
#<bpre> branch predict not taken
	bne	$5,.L_BB35_sequential_2D5_slave_kernel 	# [10]  
#Block: 15 Pred: 37 Succ: 35 36 
.Lt_2_56:	# 0x430
#<loop> Part of loop body line 55, head labeled .L_BB36_sequential_2D5_slave_kernel
#<freq>
#<freq> BB:15 frequency = 14611.28125 (heuristic)
#<freq> BB:15 => BB:35 probability = 0.12000
#<freq> BB:15 => BB:36 probability = 0.88000
#<freq>
	ldw	$6,40($sp)                	# [10]  reply
	cmpeq	$4,$6,$6                	# [14]  
#<bpre> branch predict taken
	beq	$6,.L_BB36_sequential_2D5_slave_kernel 	# [15]  
#Block: 35 Pred: 15 36 37 Succ: 16 
.L_BB35_sequential_2D5_slave_kernel:	# 0x43c
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:35 frequency = 6792.19385 (heuristic)
#<freq>
#Block: 16 Pred: 35 14 Succ: 38 
.Lt_2_54:	# 0x43c
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:16 frequency = 9056.25781 (heuristic)
#<freq>
	subl	$31,$23,$1               	# [0]  
	sll	$23,2,$0                  	# [0]  
	sll	$1,2,$1                   	# [1]  
	s4subl	$0,$0,$7               	# [1]  
	s4subl	$1,$1,$8               	# [2]  
	s4addl	$7,$7,$7               	# [2]  
	s4addl	$8,$8,$8               	# [3]  
	s8subl	$1,$1,$3               	# [3]  
	s8subl	$0,$0,$2               	# [4]  
	sll	$8,4,$8                   	# [4]  
	s4addl	$0,$2,$0               	# [5]  
	s4addl	$1,$3,$1               	# [5]  
	sll	$7,4,$7                   	# [6]  
	addl	$8,$1,$8                 	# [6]  
	addl	$7,$0,$7                 	# [7]  
	s8addl	$8,$22,$8              	# [7]  
	s8addl	$7,$22,$7              	# [8]  
	vfmov	$31,$6                  	# [8]  
	vfmov	$28,$4                  	# [9]  
#Block: 38 Pred: 16 Succ: 42 41 
.L_BB38_sequential_2D5_slave_kernel:	# 0x488
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:38 frequency = 9056.25781 (heuristic)
#<freq> BB:38 => BB:42 probability = 0.75000
#<freq> BB:38 => BB:41 probability = 0.25000
#<freq>
	.loc	1	58	0
	fldd	$5,24($7)                	# [0]  
	and	$21,3,$2                  	# [0]  
	stl	$2,288($sp)               	# [1]  gra_spill_temp_21
	stl	$5,280($sp)               	# [4]  gra_spill_temp_20
#<bpre> branch predict not taken
	beq	$2,.L_BB41_sequential_2D5_slave_kernel 	# [5]  
#Block: 42 Pred: 38 Succ: 41 43 
.L_BB42_sequential_2D5_slave_kernel:	# 0x49c
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<loop> Unrolling remainder loop (at most 3 iterations)
#<freq>
#<freq> BB:42 frequency = 6792.19336 (heuristic)
#<freq> BB:42 => BB:41 probability = 0.33333
#<freq> BB:42 => BB:43 probability = 0.66667
#<freq>
	fldd	$1,8064($8)              	# [0]  id:110 not_variable+0x0
	ldi	$8,8($8)                  	# [0]  
	fldd	$0,0($28)                	# [1]  id:109 not_variable+0x0
	ldi	$4,16($28)                	# [1]  
	fldd	$2,32($7)                	# [2]  id:108 not_variable+0x0
	ldl	$6,280($sp)               	# [3]  gra_spill_temp_20
	fnmad	$0,$1,$2,$0             	# [6]  
	fldd	$5,8($28)                	# [7]  id:111 not_variable+0x0
	ldl	$3,288($sp)               	# [8]  gra_spill_temp_21
	fnmad	$5,$6,$0,$5             	# [13]  
	addw	$31,1,$6                 	# [14]  
	subw	$3,1,$3                  	# [17]  
	stl	$3,288($sp)               	# [18]  gra_spill_temp_21
	fstd	$5,32($7)                	# [23]  id:113 not_variable+0x0
	ldi	$7,8($7)                  	# [23]  
#<bpre> branch predict not taken
	beq	$3,.L_BB41_sequential_2D5_slave_kernel 	# [24]  
#Block: 43 Pred: 42 Succ: 41 44 
.L_BB43_sequential_2D5_slave_kernel:	# 0x4dc
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:43 frequency = 4528.12891 (heuristic)
#<freq> BB:43 => BB:41 probability = 0.50000
#<freq> BB:43 => BB:44 probability = 0.50000
#<freq>
	fldd	$0,8064($8)              	# [0]  id:110 not_variable+0x0
	ldi	$8,8($8)                  	# [0]  
	fldd	$6,16($28)               	# [1]  id:109 not_variable+0x0
	fldd	$1,32($7)                	# [2]  id:108 not_variable+0x0
	fldd	$4,24($28)               	# [3]  id:111 not_variable+0x0
	fnmad	$6,$0,$1,$6             	# [6]  
	ldl	$3,288($sp)               	# [7]  gra_spill_temp_21
	fnmad	$4,$5,$6,$5             	# [13]  
	ldi	$4,32($28)                	# [14]  
	mov	2,$6                      	# [14]  
	subw	$3,1,$3                  	# [17]  
	fstd	$5,32($7)                	# [23]  id:113 not_variable+0x0
	ldi	$7,8($7)                  	# [24]  
#<bpre> branch predict unknown
	beq	$3,.L_BB41_sequential_2D5_slave_kernel 	# [24]  
#Block: 44 Pred: 43 Succ: 41 
.L_BB44_sequential_2D5_slave_kernel:	# 0x514
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:44 frequency = 2264.06445 (heuristic)
#<freq>
	fldd	$4,8064($8)              	# [0]  id:110 not_variable+0x0
	ldi	$8,8($8)                  	# [0]  
	fldd	$3,32($28)               	# [1]  id:109 not_variable+0x0
	fldd	$6,32($7)                	# [2]  id:108 not_variable+0x0
	fldd	$2,40($28)               	# [3]  id:111 not_variable+0x0
	fnmad	$3,$4,$6,$3             	# [6]  
	ldi	$4,48($28)                	# [7]  
	mov	3,$6                      	# [7]  
	fnmad	$2,$5,$3,$5             	# [13]  
	fstd	$5,32($7)                	# [23]  id:113 not_variable+0x0
	ldi	$7,8($7)                  	# [23]  
#Block: 41 Pred: 38 42 43 44 Succ: 46 45 
.L_BB41_sequential_2D5_slave_kernel:	# 0x540
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:41 frequency = 9056.25781 (heuristic)
#<freq> BB:41 => BB:46 probability = 0.99600
#<freq> BB:41 => BB:45 probability = 0.00400
#<freq>
	sra	$21,2,$0                  	# [0]  
	stl	$0,272($sp)               	# [1]  gra_spill_temp_19
#<bpre> branch predict not taken
	beq	$0,.L_BB45_sequential_2D5_slave_kernel 	# [2]  
#Block: 46 Pred: 41 Succ: 40 
.L_BB46_sequential_2D5_slave_kernel:	# 0x54c
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:46 frequency = 9020.03223 (heuristic)
#<freq>
#Block: 40 Pred: 40 46 Succ: 40 47 
	.align	4
.L_BB40_sequential_2D5_slave_kernel:	# 0x54c
#<loop> Loop body line 55, nesting depth: 3, estimated iterations: 250
#<loop> unrolled 4 times
#<freq>
#<freq> BB:40 frequency = 1695784.25000 (heuristic)
#<freq> BB:40 => BB:40 probability = 0.99600
#<freq> BB:40 => BB:47 probability = 0.00400
#<freq>
	fldd	$1,56($7)                	# [0]  id:108 not_variable+0x0
	addw	$6,4,$6                  	# [0]  
	fldd	$0,8088($8)              	# [1]  id:110 not_variable+0x0
	vstd	$9,320($sp)              	# [2]  lgra_spill_temp_v_24
	fldd	$9,48($4)                	# [3]  id:109 not_variable+0x0
	fldd	$3,8064($8)              	# [4]  id:110 not_variable+0x0
	fnmad	$9,$0,$1,$9             	# [7]  
	fldd	$0,32($7)                	# [8]  id:108 not_variable+0x0
	fldd	$2,0($4)                 	# [9]  id:109 not_variable+0x0
	fldd	$1,40($7)                	# [10]  id:108 not_variable+0x0
	fnmad	$2,$3,$0,$2             	# [13]  
	fldd	$3,16($4)                	# [14]  id:109 not_variable+0x0
	fldd	$0,8072($8)              	# [15]  id:110 not_variable+0x0
	fnmad	$3,$0,$1,$3             	# [19]  
	fldd	$1,8($4)                 	# [19]  id:111 not_variable+0x0
	fldd	$0,8080($8)              	# [20]  id:110 not_variable+0x0
	ldi	$8,32($8)                 	# [20]  
	fnmad	$1,$5,$2,$1             	# [23]  
	fldd	$5,32($4)                	# [23]  id:109 not_variable+0x0
	fldd	$2,48($7)                	# [24]  id:108 not_variable+0x0
	fnmad	$5,$0,$2,$5             	# [28]  
	fldd	$2,24($4)                	# [28]  id:111 not_variable+0x0
	cmpeq	$6,$21,$0               	# [29]  
	fnmad	$2,$1,$3,$2             	# [32]  
	fldd	$3,40($4)                	# [33]  id:111 not_variable+0x0
	fstd	$1,32($7)                	# [34]  id:113 not_variable+0x0
	fnmad	$3,$2,$5,$3             	# [39]  
	fldd	$5,56($4)                	# [40]  id:111 not_variable+0x0
	ldi	$4,64($4)                 	# [40]  
	fstd	$2,40($7)                	# [42]  id:113 not_variable+0x0
	fnmad	$5,$3,$9,$5             	# [46]  
	vldd	$9,320($sp)              	# [47]  lgra_spill_temp_v_24
	fstd	$3,48($7)                	# [49]  id:113 not_variable+0x0
	fstd	$5,56($7)                	# [56]  id:113 not_variable+0x0
	ldi	$7,32($7)                 	# [56]  
#<bpre> branch predict taken
	beq	$0,.L_BB40_sequential_2D5_slave_kernel 	# [57]  
#Block: 47 Pred: 40 Succ: 45 
.L_BB47_sequential_2D5_slave_kernel:	# 0x5dc
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:47 frequency = 6783.13721 (heuristic)
#<freq>
#Block: 45 Pred: 41 47 Succ: 39 
.L_BB45_sequential_2D5_slave_kernel:	# 0x5dc
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:45 frequency = 0.00000 (heuristic)
#<freq>
	ldi	$5,1000($31)              	# [0]  
	br	$31,.L_BB39_sequential_2D5_slave_kernel 	# [0]  
#Block: 13 Pred: 11 Succ: 14 
	.align	4
.Lt_2_53:	# 0x5e4
#<loop> Part of loop body line 49, head labeled .Lt_2_51
#<freq>
#<freq> BB:13 frequency = 1449.00122 (heuristic)
#<freq>
	.loc	1	55	0
	fldd	$2,-8($10)               	# [34]  id:106
	fstd	$2,24($4)                	# [38]  id:107 not_variable+0x0
	br	$31,.Lt_2_52               	# [39]  
#Block: 23 Pred: 22 1 Succ: 
.Lt_2_36:	# 0x5f0
#<freq>
#<freq> BB:23 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	68	0
#  64  		}
#  65  	}		
#  66  #undef HALO
#  67  #undef MLEN
#  68  }
	ldl	$3,152($sp)               	# [0]  gra_spill_temp_4
	ldl	$26,168($sp)              	# [1]  gra_spill_temp_6
	ldl	$14,136($sp)              	# [2]  gra_spill_temp_2
	ldl	$13,176($sp)              	# [3]  gra_spill_temp_7
#	.body
	ldl	$12,144($sp)              	# [4]  gra_spill_temp_3
	ldl	$11,160($sp)              	# [5]  gra_spill_temp_5
	ldl	$10,184($sp)              	# [6]  gra_spill_temp_8
	ldl	$9,192($sp)               	# [7]  gra_spill_temp_9
	vfmov	$15,$sp                 	# [7]  
	vfmov	$3,$15                  	# [8]  
	ret	$31,($26),1               	# [8]  
.Lt_2_47.bpre:
	br .Lt_2_47
.L_CC_sequential_2D5_slave_kernel:
#PU cycle count: 41715208.000000
	.end	sequential_2D5_slave_kernel

	.section .rodata
	.org 0x0
	.align	0
	# offset 0
	.ascii	"\x00\x00\x00\x00\x00\x00\x00\x00"	# double 0.00000
	.section .text1

	# Program Unit: slave_Cal_ID
	.align 4
	.ent	slave_Cal_ID#
slave_Cal_ID:	# 0x610
$ng..slave_Cal_ID:
	# return_address = 0
#Block: 1 Pred: Succ: 2 9 
	.loc	1	71	0
#  69  
#  70  static int Cal_ID(int ids[8])
#  71  {
.L_BB1_slave_Cal_ID:	# 0x610
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq> BB:1 => BB:2 probability = 0.84000
#<freq> BB:1 => BB:9 probability = 0.16000
#<freq>
	.globl	_MYID
	ldih	$5,_MYID($31)            	!tprelhi	# [0]  _MYID
	.frame $30,32,$26,0
	.mask 0x4000000,-32
	ldi	$sp,-32($sp)              	# [0]  
	ldw	$5,_MYID($5)              	!tprello	# [1]  _MYID
	and	$5,7,$17                  	# [5]  
	sra	$5,3,$5                   	# [5]  
	s8addl	$17,$31,$4             	# [6]  
	and	$5,7,$5                   	# [6]  
	sextw	$4,$4                   	# [7]  
	and	$17,1,$0                  	# [7]  
#<bpre> branch predict not taken
	beq	$0,.Lt_3_17               	# [8]  
#Block: 2 Pred: 1 Succ: 3 4 
.L_BB2_slave_Cal_ID:	# 0x638
#<freq>
#<freq> BB:2 frequency = 0.84000 (heuristic)
#<freq> BB:2 => BB:3 probability = 0.06897
#<freq> BB:2 => BB:4 probability = 0.93103
#<freq>
	.loc	1	79	0
#  75  	int row = ROW(_MYID);
#  76  	int col = COL(_MYID);
#  77  	if(col%2)
#  78  	{
#  79  		id = col*8+7-row;
	subw	$4,$5,$6                 	# [8]  
	addw	$6,7,$6                  	# [9]  
#<bpre> branch predict not taken
	beq	$5,.L_BB3_slave_Cal_ID    	# [9]  
#Block: 4 Pred: 2 Succ: 5 6 
.Lt_3_19:	# 0x644
#<freq>
#<freq> BB:4 frequency = 0.78207 (heuristic)
#<freq> BB:4 => BB:5 probability = 0.16000
#<freq> BB:4 => BB:6 probability = 0.84000
#<freq>
	.loc	1	84	0
#  80  		pr = gr = pc = gc = -1;
#  81  		if(row == 0)
#  82  		{
#  83  			pr = (col+1)%8;
#  84  			gc = row+1;
	cmpeq	$5,7,$7                 	# [9]  
#<bpre> branch predict not taken
	bne	$7,.L_BB5_slave_Cal_ID    	# [10]  
#Block: 6 Pred: 4 Succ: 7 
.Lt_3_21:	# 0x64c
#<freq>
#<freq> BB:6 frequency = 0.65694 (heuristic)
#<freq>
	.loc	1	94	0
#  90  		}
#  91  		else
#  92  		{	
#  93  			pc = row-1;
#  94  			gc = row+1;
	ldi	$7,-1($31)                	# [10]  
	addw	$5,1,$8                  	# [10]  
#Block: 7 Pred: 5 6 Succ: 
.Lt_3_20:	# 0x654
#<freq>
#<freq> BB:7 frequency = 0.78207 (heuristic)
#<freq>
	.loc	1	119	0
# 115  		}
# 116  	}
# 117  	//printf("%3d(%2d%2d%2d%2d) ", id, gr, pr, gc, pc);
# 118  
# 119  	ids[0] = id;
#	.body
#	.label_state 1
	stw	$6,0($16)                 	# [0]  id:59
	.loc	1	94	0
	ldi	$18,-1($31)               	# [0]  
	.loc	1	120	0
# 120  	ids[1] = pr;
	stw	$18,4($16)                	# [1]  id:60
	.loc	1	94	0
	subw	$5,1,$17                 	# [1]  
	.loc	1	121	0
# 121  	ids[2] = gr;
	stw	$7,8($16)                 	# [2]  id:61
	.loc	1	124	0
# 122  	ids[3] = pc;
# 123  	ids[4] = gc;
# 124  	return 0;
#	.body
#	.restore $sp
	ldi	$sp,32($sp)               	# [2]  
	.loc	1	122	0
	stw	$17,12($16)               	# [3]  id:62
	.loc	1	123	0
	vfmov	$31,$0                  	# [3]  
	stw	$8,16($16)                	# [4]  id:63
	.loc	1	124	0
	ret	$31,($26),1               	# [5]  
#Block: 15 Pred: 10 3 Succ: 
.Lt_3_22:	# 0x67c
.Lt_3_16:	# 0x67c
#<freq>
#<freq> BB:15 frequency = 0.06897 (heuristic)
#<freq>
	.loc	1	119	0
#	.body
#	.copy_state 1
#	.body
#	.label_state 2
	stw	$6,0($16)                 	# [0]  id:59
	.loc	1	124	0
#	.body
#	.restore $sp
	ldi	$sp,32($sp)               	# [0]  
	.loc	1	120	0
	stw	$18,4($16)                	# [1]  id:60
	.loc	1	123	0
	vfmov	$31,$0                  	# [1]  
	.loc	1	121	0
	stw	$7,8($16)                 	# [2]  id:61
	.loc	1	122	0
	stw	$19,12($16)               	# [3]  id:62
	.loc	1	123	0
	stw	$8,16($16)                	# [4]  id:63
	.loc	1	124	0
	ret	$31,($26),1               	# [5]  
#Block: 9 Pred: 1 Succ: 10 11 
.Lt_3_17:	# 0x69c
#<freq>
#<freq> BB:9 frequency = 0.16000 (heuristic)
#<freq> BB:9 => BB:10 probability = 0.06897
#<freq> BB:9 => BB:11 probability = 0.93103
#<freq>
	.loc	1	99	0
#	.body
#	.copy_state 2
	addw	$4,$5,$6                 	# [8]  
#<bpre> branch predict not taken
	beq	$5,.L_BB10_slave_Cal_ID   	# [8]  
#Block: 11 Pred: 9 Succ: 12 13 
.Lt_3_23:	# 0x6a4
#<freq>
#<freq> BB:11 frequency = 0.14897 (heuristic)
#<freq> BB:11 => BB:12 probability = 0.16000
#<freq> BB:11 => BB:13 probability = 0.84000
#<freq>
	.loc	1	104	0
	cmpeq	$5,7,$19                	# [8]  
#<bpre> branch predict not taken
	bne	$19,.L_BB12_slave_Cal_ID  	# [9]  
#Block: 13 Pred: 11 Succ: 14 
.Lt_3_25:	# 0x6ac
#<freq>
#<freq> BB:13 frequency = 0.12513 (heuristic)
#<freq>
	.loc	1	113	0
	ldi	$18,-1($31)               	# [9]  
	addw	$5,1,$19                 	# [9]  
#Block: 14 Pred: 12 13 Succ: 
.Lt_3_24:	# 0x6b4
#<freq>
#<freq> BB:14 frequency = 0.14897 (heuristic)
#<freq>
	.loc	1	119	0
#	.body
#	.label_state 3
	stw	$6,0($16)                 	# [0]  id:59
	.loc	1	113	0
	ldi	$21,-1($31)               	# [0]  
	.loc	1	120	0
	stw	$18,4($16)                	# [1]  id:60
	.loc	1	113	0
	subw	$5,1,$20                 	# [1]  
	.loc	1	121	0
	stw	$21,8($16)                	# [2]  id:61
	.loc	1	124	0
#	.body
#	.restore $sp
	ldi	$sp,32($sp)               	# [2]  
	.loc	1	122	0
	stw	$19,12($16)               	# [3]  id:62
	.loc	1	123	0
	vfmov	$31,$0                  	# [3]  
	stw	$20,16($16)               	# [4]  id:63
	.loc	1	124	0
	ret	$31,($26),1               	# [5]  
#Block: 5 Pred: 4 Succ: 7 
.L_BB5_slave_Cal_ID:	# 0x6dc
#<freq>
#<freq> BB:5 frequency = 0.12513 (heuristic)
#<freq>
	.loc	1	88	0
#	.body
#	.copy_state 3
	subw	$17,1,$7                 	# [10]  
	ldi	$8,-1($31)                	# [10]  
	br	$31,.Lt_3_20               	# [11]  
#Block: 3 Pred: 2 Succ: 15 
.L_BB3_slave_Cal_ID:	# 0x6e8
#<freq>
#<freq> BB:3 frequency = 0.05793 (heuristic)
#<freq>
	.loc	1	83	0
	addw	$17,1,$18                	# [0]  
	.loc	1	84	0
	ldi	$7,-1($31)                	# [0]  
	.loc	1	83	0
	subw	$31,$18,$20              	# [1]  
	.loc	1	84	0
	ldi	$19,-1($31)               	# [1]  
	.loc	1	83	0
	selge	$18,$18,$20,$20         	# [2]  
	.loc	1	84	0
	addw	$5,1,$8                  	# [2]  
	.loc	1	83	0
	and	$20,7,$20                 	# [3]  
	subw	$31,$20,$21              	# [4]  
	selge	$18,$20,$21,$18         	# [5]  
	.loc	1	84	0
	br	$31,.Lt_3_22               	# [5]  
#Block: 12 Pred: 11 Succ: 14 
.L_BB12_slave_Cal_ID:	# 0x710
#<freq>
#<freq> BB:12 frequency = 0.02383 (heuristic)
#<freq>
	.loc	1	108	0
	addw	$17,1,$18                	# [9]  
	ldi	$19,-1($31)               	# [9]  
	br	$31,.Lt_3_24               	# [10]  
#Block: 10 Pred: 9 Succ: 15 
.L_BB10_slave_Cal_ID:	# 0x71c
#<freq>
#<freq> BB:10 frequency = 0.01103 (heuristic)
#<freq>
	.loc	1	104	0
	addw	$17,7,$7                 	# [0]  
	ldi	$18,-1($31)               	# [0]  
	subw	$31,$7,$20               	# [1]  
	ldi	$8,-1($31)                	# [1]  
	selge	$7,$7,$20,$20           	# [2]  
	.loc	1	103	0
	addw	$5,1,$19                 	# [2]  
	.loc	1	104	0
	and	$20,7,$20                 	# [3]  
	subw	$31,$20,$21              	# [4]  
	selge	$7,$20,$21,$7           	# [5]  
	br	$31,.Lt_3_22               	# [5]  
.L_CC_slave_Cal_ID:
#PU cycle count: 16.264826
	.end	slave_Cal_ID
	.section .text1
	.align 4

	# Program Unit: Cal_ID_RM
	.align 4
	.ent	Cal_ID_RM#
	.globl	Cal_ID_RM
Cal_ID_RM:	# 0x750
	# return_address = 0
#Block: 1 Pred: Succ: 2 9 
	.loc	1	128	0
# 125  }
# 126  
# 127  int Cal_ID_RM(int ids[8])
# 128  {
.L_BB1_Cal_ID_RM:	# 0x750
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq> BB:1 => BB:2 probability = 0.84000
#<freq> BB:1 => BB:9 probability = 0.16000
#<freq>
	ldih	$gp,0($27)               	!gpdisp!4	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!4	# [1]  0
	
$ng..Cal_ID_RM:
	ldih	$5,_MYID($31)            	!tprelhi	# [2]  _MYID
	ldi	$sp,-32($sp)              	# [2]  
	ldw	$5,_MYID($5)              	!tprello	# [3]  _MYID
	sra	$5,3,$17                  	# [7]  
	.frame $30,32,$26,0
	.mask 0x4000000,-32
	and	$5,7,$5                   	# [7]  
	and	$17,7,$17                 	# [8]  
	s8addl	$17,$31,$4             	# [9]  
	and	$17,1,$0                  	# [9]  
	sextw	$4,$4                   	# [10]  
#<bpre> branch predict not taken
	beq	$0,.Lt_4_17               	# [10]  
#Block: 2 Pred: 1 Succ: 3 4 
.L_BB2_Cal_ID_RM:	# 0x78c
#<freq>
#<freq> BB:2 frequency = 0.84000 (heuristic)
#<freq> BB:2 => BB:3 probability = 0.06897
#<freq> BB:2 => BB:4 probability = 0.93103
#<freq>
	.loc	1	136	0
# 132  	int row = ROW(_MYID);
# 133  	int col = COL(_MYID);
# 134  	if(row%2)
# 135  	{
# 136  		id = 7-col+8*row;
	subw	$4,$5,$6                 	# [9]  
	addw	$6,7,$6                  	# [10]  
#<bpre> branch predict not taken
	beq	$5,.L_BB3_Cal_ID_RM       	# [10]  
#Block: 4 Pred: 2 Succ: 5 6 
.Lt_4_19:	# 0x798
#<freq>
#<freq> BB:4 frequency = 0.78207 (heuristic)
#<freq> BB:4 => BB:5 probability = 0.16000
#<freq> BB:4 => BB:6 probability = 0.84000
#<freq>
	.loc	1	141	0
# 137  		pr = gr = pc = gc = -1;
# 138  		if(col == 0)
# 139  		{
# 140  			pc = (row+1)%8;
# 141  			gr = col+1;
	cmpeq	$5,7,$7                 	# [10]  
#<bpre> branch predict not taken
	bne	$7,.L_BB5_Cal_ID_RM       	# [11]  
#Block: 6 Pred: 4 Succ: 7 
.Lt_4_21:	# 0x7a0
#<freq>
#<freq> BB:6 frequency = 0.65694 (heuristic)
#<freq>
	.loc	1	151	0
# 147  		}
# 148  		else
# 149  		{	
# 150  			pr = col-1;
# 151  			gr = col+1;
	ldi	$8,-1($31)                	# [11]  
	addw	$5,1,$7                  	# [11]  
#Block: 7 Pred: 5 6 Succ: 
.Lt_4_20:	# 0x7a8
#<freq>
#<freq> BB:7 frequency = 0.78207 (heuristic)
#<freq>
	.loc	1	176	0
# 172  		}
# 173  	}
# 174  	//printf("%3d(%2d%2d%2d%2d) ", id, gr, pr, gc, pc);
# 175  
# 176  	ids[0] = id;
	stw	$6,0($16)                 	# [0]  id:59
	.loc	1	151	0
	subw	$5,1,$18                 	# [0]  
	.loc	1	177	0
# 177  	ids[1] = pr;
	stw	$18,4($16)                	# [1]  id:60
	.loc	1	151	0
#	.body
#	.label_state 1
	ldi	$17,-1($31)               	# [1]  
	.loc	1	178	0
# 178  	ids[2] = gr;
	stw	$7,8($16)                 	# [2]  id:61
	.loc	1	181	0
# 179  	ids[3] = pc;
# 180  	ids[4] = gc;
# 181  	return 0;
	ldi	$sp,32($sp)               	# [2]  
	.loc	1	179	0
	stw	$17,12($16)               	# [3]  id:62
	.loc	1	180	0
	vfmov	$31,$0                  	# [3]  
#	.body
#	.restore $sp
	stw	$8,16($16)                	# [4]  id:63
	.loc	1	181	0
	ret	$31,($26),1               	# [5]  
#Block: 15 Pred: 10 3 Succ: 
.Lt_4_22:	# 0x7d0
.Lt_4_16:	# 0x7d0
#<freq>
#<freq> BB:15 frequency = 0.06897 (heuristic)
#<freq>
	.loc	1	176	0
	stw	$6,0($16)                 	# [0]  id:59
	.loc	1	181	0
	ldi	$sp,32($sp)               	# [0]  
	.loc	1	177	0
	stw	$19,4($16)                	# [1]  id:60
	.loc	1	180	0
#	.body
#	.copy_state 1
#	.body
#	.label_state 2
	vfmov	$31,$0                  	# [1]  
	.loc	1	178	0
#	.body
#	.restore $sp
	stw	$7,8($16)                 	# [2]  id:61
	.loc	1	179	0
	stw	$18,12($16)               	# [3]  id:62
	.loc	1	180	0
	stw	$8,16($16)                	# [4]  id:63
	.loc	1	181	0
	ret	$31,($26),1               	# [5]  
#Block: 9 Pred: 1 Succ: 10 11 
.Lt_4_17:	# 0x7f0
#<freq>
#<freq> BB:9 frequency = 0.16000 (heuristic)
#<freq> BB:9 => BB:10 probability = 0.06897
#<freq> BB:9 => BB:11 probability = 0.93103
#<freq>
	.loc	1	156	0
	addw	$5,$4,$6                 	# [9]  
#<bpre> branch predict not taken
	beq	$5,.L_BB10_Cal_ID_RM      	# [9]  
#Block: 11 Pred: 9 Succ: 12 13 
.Lt_4_23:	# 0x7f8
#<freq>
#<freq> BB:11 frequency = 0.14897 (heuristic)
#<freq> BB:11 => BB:12 probability = 0.16000
#<freq> BB:11 => BB:13 probability = 0.84000
#<freq>
	.loc	1	161	0
	cmpeq	$5,7,$19                	# [9]  
#	.body
#	.copy_state 2
#<bpre> branch predict not taken
	bne	$19,.L_BB12_Cal_ID_RM     	# [10]  
#Block: 13 Pred: 11 Succ: 14 
.Lt_4_25:	# 0x800
#<freq>
#<freq> BB:13 frequency = 0.12513 (heuristic)
#<freq>
	.loc	1	170	0
	ldi	$18,-1($31)               	# [10]  
	addw	$5,1,$19                 	# [10]  
#Block: 14 Pred: 12 13 Succ: 
.Lt_4_24:	# 0x808
#<freq>
#<freq> BB:14 frequency = 0.14897 (heuristic)
#<freq>
	.loc	1	176	0
	stw	$6,0($16)                 	# [0]  id:59
	.loc	1	170	0
	subw	$5,1,$21                 	# [0]  
	.loc	1	177	0
	stw	$19,4($16)                	# [1]  id:60
	.loc	1	170	0
#	.body
#	.label_state 3
	ldi	$20,-1($31)               	# [1]  
	.loc	1	178	0
	stw	$21,8($16)                	# [2]  id:61
	.loc	1	181	0
	ldi	$sp,32($sp)               	# [2]  
	.loc	1	179	0
	stw	$18,12($16)               	# [3]  id:62
	.loc	1	180	0
	vfmov	$31,$0                  	# [3]  
#	.body
#	.restore $sp
	stw	$20,16($16)               	# [4]  id:63
	.loc	1	181	0
	ret	$31,($26),1               	# [5]  
#Block: 5 Pred: 4 Succ: 7 
.L_BB5_Cal_ID_RM:	# 0x830
#<freq>
#<freq> BB:5 frequency = 0.12513 (heuristic)
#<freq>
	.loc	1	145	0
	subw	$17,1,$8                 	# [11]  
	ldi	$7,-1($31)                	# [11]  
	br	$31,.Lt_4_20               	# [12]  
#Block: 3 Pred: 2 Succ: 15 
.L_BB3_Cal_ID_RM:	# 0x83c
#<freq>
#<freq> BB:3 frequency = 0.05793 (heuristic)
#<freq>
	.loc	1	140	0
#	.body
#	.copy_state 3
	addw	$17,1,$18                	# [0]  
	.loc	1	141	0
	ldi	$19,-1($31)               	# [0]  
	.loc	1	140	0
	subw	$31,$18,$20              	# [1]  
	.loc	1	141	0
	ldi	$8,-1($31)                	# [1]  
	.loc	1	140	0
	selge	$18,$18,$20,$20         	# [2]  
	.loc	1	141	0
	addw	$5,1,$7                  	# [2]  
	.loc	1	140	0
	and	$20,7,$20                 	# [3]  
	subw	$31,$20,$21              	# [4]  
	selge	$18,$20,$21,$18         	# [5]  
	.loc	1	141	0
	br	$31,.Lt_4_22               	# [5]  
#Block: 12 Pred: 11 Succ: 14 
.L_BB12_Cal_ID_RM:	# 0x864
#<freq>
#<freq> BB:12 frequency = 0.02383 (heuristic)
#<freq>
	.loc	1	165	0
	addw	$17,1,$18                	# [10]  
	ldi	$19,-1($31)               	# [10]  
	br	$31,.Lt_4_24               	# [11]  
#Block: 10 Pred: 9 Succ: 15 
.L_BB10_Cal_ID_RM:	# 0x870
#<freq>
#<freq> BB:10 frequency = 0.01103 (heuristic)
#<freq>
	.loc	1	161	0
	addw	$17,7,$8                 	# [0]  
	ldi	$7,-1($31)                	# [0]  
	subw	$31,$8,$20               	# [1]  
	ldi	$18,-1($31)               	# [1]  
	selge	$8,$8,$20,$20           	# [2]  
	.loc	1	160	0
	addw	$5,1,$19                 	# [2]  
	.loc	1	161	0
	and	$20,7,$20                 	# [3]  
	subw	$31,$20,$21              	# [4]  
	selge	$8,$20,$21,$8           	# [5]  
	br	$31,.Lt_4_22               	# [5]  
.L_CC_Cal_ID_RM:
#PU cycle count: 18.264826
	.end	Cal_ID_RM
	.section .text1
	.align 4

	# Program Unit: forward_2D5_slave_kernel
	.align 4
	.ent	forward_2D5_slave_kernel#
	.globl	forward_2D5_slave_kernel
forward_2D5_slave_kernel:	# 0x890
	# ids = 64
	# reply = 96
	# COUNT = 100
	# dma_get = 128
	# dma_put = 160
	# LX = -17664
	# LA = -35072
	# _v = 192
	# _v = 224
	# pad_2 = -17664
	# pad_3 = -35072
	# return_address = 0
	# reserved_spill_temp_25 = 32
	# gra_spill_temp_26 = 256
	# gra_spill_temp_27 = 264
	# gra_spill_temp_28 = 272
	# gra_spill_temp_29 = 280
	# gra_spill_temp_30 = 288
	# gra_spill_temp_31 = 296
	# gra_spill_temp_32 = 304
	# gra_spill_temp_33 = 312
	# gra_spill_temp_34 = 320
	# gra_spill_temp_35 = 328
	# gra_spill_temp_36 = 336
	# gra_spill_temp_37 = 344
	# gra_spill_temp_38 = 352
	# gra_spill_temp_39 = 360
	# gra_spill_temp_40 = 368
	# gra_spill_temp_41 = 376
	# gra_spill_temp_42 = 384
	# gra_spill_temp_43 = 392
	# gra_spill_temp_44 = 400
	# gra_spill_temp_45 = 408
	# gra_spill_temp_46 = 416
	# gra_spill_temp_47 = 424
	# gra_spill_temp_48 = 432
	# gra_spill_temp_49 = 440
	# gra_spill_temp_50 = 448
	# gra_spill_temp_51 = 456
	# gra_spill_temp_52 = 464
	# gra_spill_temp_53 = 472
	# gra_spill_temp_54 = 480
	# gra_spill_temp_55 = 488
	# gra_spill_temp_56 = 496
	# gra_spill_temp_57 = 504
	# gra_spill_temp_58 = 512
	# gra_spill_temp_59 = 520
	# gra_spill_temp_60 = 528
	# gra_spill_temp_61 = 536
	# gra_spill_temp_62 = 544
	# gra_spill_temp_63 = 552
	# gra_spill_temp_64 = 560
	# gra_spill_temp_65 = 568
	# gra_spill_temp_66 = 576
#Block: 1 Pred: Succ: 2 
	.loc	1	185	0
# 182  }
# 183  
# 184  int forward_2D5_slave_kernel(double *X, double *A, double *B, int M, int N, int L)
# 185  {
.L_BB1_forward_2D5_slave_kernel:	# 0x890
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq>
	ldih	$gp,0($27)               	!gpdisp!5	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!5	# [1]  0
	
$ng..forward_2D5_slave_kernel:
	vfmov	$15,$0                  	# [2]  
	ldi	$1,-29856($31)            	# [2]  
	ldih	$1,1($1)                 	# [3]  
	subl	$sp,$1,$sp               	# [4]  
	addl	$sp,$1,$15               	# [5]  
	stl	$9,304($sp)               	# [5]  gra_spill_temp_32
	stl	$10,288($sp)              	# [6]  gra_spill_temp_30
#	.vframe $15
	stl	$11,264($sp)              	# [7]  gra_spill_temp_27
#	.spillsp $9, 0
	stl	$12,296($sp)              	# [8]  gra_spill_temp_31
#	.spillsp $10, 0
	stl	$0,280($sp)               	# [9]  gra_spill_temp_29
#	.spillsp $11, 0
	stl	$13,272($sp)              	# [10]  gra_spill_temp_28
#	.spillsp $12, 0
	stl	$14,256($sp)              	# [11]  gra_spill_temp_26
#	.spillsp $15, 0
	stl	$20,568($sp)              	# [12]  gra_spill_temp_65
#	.spillsp $13, 0
	stl	$19,456($sp)              	# [13]  gra_spill_temp_51
#	.spillsp $14, 0
	stl	$18,368($sp)              	# [14]  gra_spill_temp_40
	stl	$17,360($sp)              	# [15]  gra_spill_temp_39
	stl	$16,352($sp)              	# [16]  gra_spill_temp_38
	.loc	1	191	0
# 187  	int gr = -1, gc = -1, pr = -1, pc = -1;
# 188  	//Init id information
# 189  	{
# 190  		int ids[8];
# 191  		Cal_ID(ids);
	ldi	$16,64($sp)               	# [16]  ids
	.loc	1	185	0
	stl	$26,0($sp)                	# [17]  return_address
	.loc	1	191	0
	.prologue
	bsr	$26,$ng..slave_Cal_ID     	# [18]  slave_Cal_ID
#Block: 2 Pred: 1 Succ: 3 63 
.L_BB2_forward_2D5_slave_kernel:	# 0x8f4
#<freq>
#<freq> BB:2 frequency = 1.00000 (heuristic)
#<freq> BB:2 => BB:3 probability = 0.97590
#<freq> BB:2 => BB:63 probability = 0.02410
#<freq>
	.loc	2	79	0
	ldw	$8,132($sp)               	# [0]  dma_get+4
	ornot	$31,$31,$7              	# [0]  
	ldw	$2,164($sp)               	# [1]  dma_put+4
	srl	$7,60,$7                  	# [1]  
	mov	1,$3                      	# [2]  
	sll	$7,24,$7                  	# [2]  
	sll	$3,24,$3                  	# [3]  
	.loc	1	192	0
# 192  		id = ids[0];
	ldw	$16,64($sp)               	# [3]  ids
	.loc	2	79	0
	and	$3,$7,$3                  	# [4]  
	andnot	$8,$7,$8               	# [4]  
	.loc	2	73	0
	ldl	$1,568($sp)               	# [5]  gra_spill_temp_65
	.loc	2	85	0
	ldi	$6,-1($31)                	# [5]  
	ldih	$6,4096($6)              	# [6]  
	.loc	2	79	0
	or	$3,$8,$3                   	# [6]  
	andnot	$2,$7,$2               	# [7]  
	.loc	2	85	0
	and	$3,$6,$3                  	# [7]  
	and	$2,$6,$2                  	# [8]  
	.loc	1	192	0
	ldi	$6,96($sp)                	# [8]  reply
	.loc	1	202	0
# 198  	//Begin Cal
# 199  	{
# 200  #define HALO 4
# 201  #define MLEN 1000 
# 202  		volatile int reply = 0;
	stw	$31,96($sp)               	# [9]  reply
	.loc	1	193	0
	ldw	$13,68($sp)               	# [10]  ids+4
	.loc	1	194	0
	ldw	$5,72($sp)                	# [11]  ids+8
	.loc	1	195	0
	ldw	$14,76($sp)               	# [12]  ids+12
	.loc	1	196	0
	ldw	$4,80($sp)                	# [13]  ids+16
	.loc	1	203	0
# 203  		volatile int COUNT = 0;
	stw	$31,100($sp)              	# [14]  COUNT
	.loc	2	73	0
	sth	$6,136($sp)               	# [15]  dma_get+8
	sth	$6,168($sp)               	# [16]  dma_put+8
	.loc	2	85	0
	stl	$2,520($sp)               	# [17]  gra_spill_temp_59
	stw	$2,164($sp)               	# [18]  dma_put+4
	stl	$3,512($sp)               	# [19]  gra_spill_temp_58
	stw	$3,132($sp)               	# [20]  dma_get+4
	.loc	1	192	0
	stl	$16,376($sp)              	# [21]  gra_spill_temp_41
	.loc	2	103	0
	stw	$31,140($sp)              	# [22]  dma_get+12
	stw	$31,172($sp)              	# [23]  dma_put+12
	.loc	2	73	0
#<bpre> branch predict not taken
	ble	$1,.Lt_5_86               	# [24]  
#Block: 3 Pred: 2 Succ: 4 
.L_BB3_forward_2D5_slave_kernel:	# 0x97c
#<freq>
#<freq> BB:3 frequency = 0.97590 (heuristic)
#<freq>
	ldl	$12,568($sp)              	# [0]  gra_spill_temp_65
	ldi	$1,28312($31)             	# [0]  
	ldih	$1,-31982($1)            	# [1]  
	vfmov	$31,$9                  	# [1]  
	sll	$1,32,$1                  	# [2]  
	ldi	$18,-17664($15)           	# [2]  LX.BLOCK
	subw	$12,1,$26                	# [4]  
	subw	$31,$26,$0               	# [5]  
	selge	$26,$26,$0,$0           	# [6]  
	umulh	$0,$1,$0                	# [7]  
	srl	$0,9,$0                   	# [12]  
	subw	$31,$0,$1                	# [13]  
	selge	$26,$0,$1,$0            	# [14]  
	addw	$0,1,$0                  	# [15]  
	divw	$26,$0,$10
	ldl	$17,456($sp)              	# [16]  gra_spill_temp_51
	addw	$10,3,$11                	# [16]  
	ldl	$19,376($sp)              	# [17]  gra_spill_temp_41
	sll	$12,6,$8                  	# [17]  
	sextw	$8,$8                   	# [18]  
	selge	$10,$10,$11,$10         	# [18]  
	ldw	$24,160($sp)              	# [19]  dma_put
	sra	$10,2,$10                 	# [19]  
	addw	$17,63,$22               	# [20]  
	addl	$8,$8,$11                	# [20]  
	selge	$17,$17,$22,$22         	# [21]  
	subw	$17,$19,$23              	# [21]  
	addw	$23,63,$23               	# [22]  
	sra	$22,6,$22                 	# [22]  
	stl	$23,336($sp)              	# [23]  gra_spill_temp_36
	vfmov	$22,$23                 	# [23]  
	sll	$22,6,$20                 	# [24]  
	mulw	$12,$19,$21              	# [24]  
	sextw	$20,$20                 	# [25]  
	sextw	$11,$11                 	# [25]  
	subw	$17,$20,$20              	# [26]  
	s4addl	$10,$31,$10            	# [26]  
	cmplt	$19,$20,$20             	# [27]  
	ldi	$26,30464($31)            	# [27]  
	ldih	$26,-1($26)              	# [28]  
	stl	$20,392($sp)              	# [28]  gra_spill_temp_43
	cmpeq	$19,0,$20               	# [29]  
	cmplt	$19,$17,$19             	# [29]  
	subw	$17,1,$17                	# [30]  
	sextw	$10,$10                 	# [30]  
	s8addl	$11,$31,$11            	# [31]  
	addw	$22,1,$22                	# [31]  
	s8addl	$8,$31,$8              	# [32]  
	ldw	$16,128($sp)              	# [32]  dma_get
	ldi	$18,8064($18)             	# [33]  
	stl	$8,448($sp)               	# [33]  gra_spill_temp_50
	stl	$18,496($sp)              	# [34]  gra_spill_temp_56
	addw	$10,4,$10                	# [34]  
	stl	$22,320($sp)              	# [35]  gra_spill_temp_34
	cmple	$31,$5,$22              	# [35]  
	stl	$11,440($sp)              	# [36]  gra_spill_temp_49
	cmple	$31,$14,$11             	# [36]  
	stl	$17,432($sp)              	# [37]  gra_spill_temp_48
	addl	$15,$26,$26              	# [37]  
	stl	$19,384($sp)              	# [38]  gra_spill_temp_42
	stl	$20,400($sp)              	# [39]  gra_spill_temp_44
	stl	$21,344($sp)              	# [40]  gra_spill_temp_37
	stl	$21,416($sp)              	# [41]  gra_spill_temp_46
	cmple	$31,$4,$21              	# [41]  
	stl	$23,312($sp)              	# [42]  gra_spill_temp_33
	stl	$24,504($sp)              	# [43]  gra_spill_temp_57
	stl	$12,424($sp)              	# [44]  gra_spill_temp_47
	cmple	$31,$13,$12             	# [44]  
	stl	$31,408($sp)              	# [45]  gra_spill_temp_45
	br	$31,.Lt_5_90               	# [46]  
#Block: 62 Pred: 61 14 Succ: 63 4 
	.align	4
.Lt_5_101:	# 0xa9c
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:62 frequency = 97.59152 (heuristic)
#<freq> BB:62 => BB:63 probability = 0.01000
#<freq> BB:62 => BB:4 probability = 0.99000
#<freq>
	.loc	1	278	0
# 274  							idx ++;
# 275  						}
# 276  					}
# 277  				}
# 278  				WXL_DMA_NEW(dma_put, X+i*N+k, LX[1]+HALO, sizeof(double)*LEN, COUNT);
	ldl	$2,408($sp)               	# [0]  gra_spill_temp_45
	addw	$9,1,$9                  	# [0]  
	ldl	$3,568($sp)               	# [1]  gra_spill_temp_65
	addw	$2,$10,$2                	# [4]  
	stl	$2,408($sp)               	# [5]  gra_spill_temp_45
	cmplt	$2,$3,$2                	# [8]  
	ldl	$3,416($sp)               	# [9]  gra_spill_temp_46
	ldl	$4,424($sp)               	# [10]  gra_spill_temp_47
	addw	$3,$10,$3                	# [13]  
	stl	$3,416($sp)               	# [14]  gra_spill_temp_46
	subw	$4,$10,$4                	# [17]  
	stl	$4,424($sp)               	# [18]  gra_spill_temp_47
#<bpre> branch predict not taken
	beq	$2,.Lt_5_86               	# [19]  
#Block: 4 Pred: 3 62 Succ: 5 6 
.Lt_5_90:	# 0xad0
#<loop> Loop body line 73, nesting depth: 1, estimated iterations: 100
#<freq>
#<freq> BB:4 frequency = 97.59151 (heuristic)
#<freq> BB:4 => BB:5 probability = 0.84000
#<freq> BB:4 => BB:6 probability = 0.16000
#<freq>
	.loc	2	73	0
	ldl	$17,424($sp)              	# [0]  gra_spill_temp_47
	ldl	$5,392($sp)               	# [1]  gra_spill_temp_43
	cmplt	$17,$10,$8              	# [4]  
	seleq	$8,$10,$17,$8           	# [5]  
#<bpre> branch predict not taken
	beq	$5,.Lt_5_92               	# [8]  
#Block: 5 Pred: 4 Succ: 7 
.L_BB5_forward_2D5_slave_kernel:	# 0xae4
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:5 frequency = 81.97688 (heuristic)
#<freq>
	.loc	1	220	0
	ldl	$27,320($sp)              	# [0]  gra_spill_temp_34
	mulw	$27,$8,$27               	# [4]  
#Block: 7 Pred: 5 6 Succ: 8 11 
.Lt_5_91:	# 0xaec
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:7 frequency = 97.59151 (heuristic)
#<freq> BB:7 => BB:8 probability = 0.71053
#<freq> BB:7 => BB:11 probability = 0.28947
#<freq>
	ldi	$28,-3($31)               	# [5]  
	cmplt	$8,$28,$28              	# [12]  
#<bpre> branch predict not taken
	bne	$28,.Lt_5_93              	# [13]  
#Block: 8 Pred: 7 Succ: 64 
.L_BB8_forward_2D5_slave_kernel:	# 0xaf8
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:8 frequency = 69.34134 (heuristic)
#<freq>
	vfmov	$31,$5                  	# [0]  
	ldi	$6,-17664($15)            	# [0]  LX.BLOCK
	addw	$8,4,$7                  	# [1]  
#Block: 64 Pred: 8 Succ: 68 67 
.L_BB64_forward_2D5_slave_kernel:	# 0xb04
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:64 frequency = 69.34134 (heuristic)
#<freq> BB:64 => BB:68 probability = 0.75000
#<freq> BB:64 => BB:67 probability = 0.25000
#<freq>
	and	$7,3,$4                   	# [0]  
#<bpre> branch predict not taken
	beq	$4,.L_BB67_forward_2D5_slave_kernel 	# [1]  
#Block: 68 Pred: 64 Succ: 67 69 
.L_BB68_forward_2D5_slave_kernel:	# 0xb0c
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<loop> Unrolling remainder loop (at most 3 iterations)
#<freq>
#<freq> BB:68 frequency = 52.00600 (heuristic)
#<freq> BB:68 => BB:67 probability = 0.33333
#<freq> BB:68 => BB:69 probability = 0.66667
#<freq>
	subw	$4,1,$4                  	# [0]  
	.loc	1	221	0
	ldi	$6,8($6)                  	# [0]  
	addw	$31,1,$5                 	# [1]  
	fstd	$31,-17664($15)          	# [1]  LX.BLOCK
#<bpre> branch predict not taken
	beq	$4,.L_BB67_forward_2D5_slave_kernel 	# [2]  
#Block: 69 Pred: 68 Succ: 67 70 
.L_BB69_forward_2D5_slave_kernel:	# 0xb20
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:69 frequency = 34.67067 (heuristic)
#<freq> BB:69 => BB:67 probability = 0.50000
#<freq> BB:69 => BB:70 probability = 0.50000
#<freq>
	ldi	$6,-17664($15)            	# [0]  LX.BLOCK
	subw	$4,1,$17                 	# [0]  
	ldi	$6,16($6)                 	# [1]  
	mov	2,$5                      	# [1]  
	fstd	$31,-17656($15)          	# [2]  LX.BLOCK+8
#<bpre> branch predict unknown
	beq	$17,.L_BB67_forward_2D5_slave_kernel 	# [3]  
#Block: 70 Pred: 69 Succ: 67 
.L_BB70_forward_2D5_slave_kernel:	# 0xb38
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:70 frequency = 17.33533 (heuristic)
#<freq>
	ldi	$6,-17664($15)            	# [0]  LX.BLOCK
	mov	3,$5                      	# [0]  
	ldi	$6,24($6)                 	# [1]  
	fstd	$31,-17648($15)          	# [1]  LX.BLOCK+16
#Block: 67 Pred: 64 68 69 70 Succ: 72 71 
.L_BB67_forward_2D5_slave_kernel:	# 0xb48
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:67 frequency = 69.34134 (heuristic)
#<freq> BB:67 => BB:72 probability = 0.99602
#<freq> BB:67 => BB:71 probability = 0.00398
#<freq>
	sra	$7,2,$23                  	# [0]  
#<bpre> branch predict not taken
	beq	$23,.L_BB71_forward_2D5_slave_kernel 	# [1]  
#Block: 72 Pred: 67 Succ: 66 
.L_BB72_forward_2D5_slave_kernel:	# 0xb50
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:72 frequency = 69.06508 (heuristic)
#<freq>
	vfmov	$31,$4                  	# [0]  
#Block: 66 Pred: 66 72 Succ: 66 73 
	.align	4
.L_BB66_forward_2D5_slave_kernel:	# 0xb54
#<loop> Loop body line 220, nesting depth: 2, estimated iterations: 251
#<loop> unrolled 4 times
#<freq>
#<freq> BB:66 frequency = 13036.17188 (heuristic)
#<freq> BB:66 => BB:66 probability = 0.99602
#<freq> BB:66 => BB:73 probability = 0.00398
#<freq>
	addw	$5,4,$5                  	# [0]  
	fstd	$4,24($6)                	# [0]  id:246 not_variable+0x0
	cmpeq	$5,$7,$17               	# [1]  
	fstd	$4,16($6)                	# [1]  id:246 not_variable+0x0
	fstd	$4,8($6)                 	# [2]  id:246 not_variable+0x0
	fstd	$4,0($6)                 	# [3]  id:246 not_variable+0x0
	ldi	$6,32($6)                 	# [3]  
#<bpre> branch predict taken
	beq	$17,.L_BB66_forward_2D5_slave_kernel 	# [4]  
#Block: 73 Pred: 66 Succ: 71 
.L_BB73_forward_2D5_slave_kernel:	# 0xb74
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:73 frequency = 51.93694 (heuristic)
#<freq>
#Block: 71 Pred: 67 73 Succ: 65 
.L_BB71_forward_2D5_slave_kernel:	# 0xb74
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:71 frequency = 0.00000 (heuristic)
#<freq>
#Block: 65 Pred: 71 Succ: 11 
.L_BB65_forward_2D5_slave_kernel:	# 0xb74
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:65 frequency = 69.34134 (heuristic)
#<freq>
#Block: 11 Pred: 65 7 Succ: 12 13 
.Lt_5_93:	# 0xb74
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:11 frequency = 97.59151 (heuristic)
#<freq> BB:11 => BB:12 probability = 0.84000
#<freq> BB:11 => BB:13 probability = 0.16000
#<freq>
	ldl	$18,400($sp)              	# [0]  gra_spill_temp_44
#<bpre> branch predict not taken
	beq	$18,.Lt_5_100             	# [4]  
#Block: 12 Pred: 11 Succ: 14 
.L_BB12_forward_2D5_slave_kernel:	# 0xb7c
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:12 frequency = 81.97688 (heuristic)
#<freq>
	.loc	1	222	0
	vfmov	$8,$6                   	# [0]  
#Block: 14 Pred: 12 13 Succ: 15 62 
.Lt_5_99:	# 0xb80
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:14 frequency = 97.59151 (heuristic)
#<freq> BB:14 => BB:15 probability = 0.92799
#<freq> BB:14 => BB:62 probability = 0.07201
#<freq>
	ldl	$19,384($sp)              	# [0]  gra_spill_temp_42
#<bpre> branch predict not taken
	beq	$19,.Lt_5_101.bpre        	# [4]  
#Block: 15 Pred: 14 Succ: 17 
.L_BB15_forward_2D5_slave_kernel:	# 0xb88
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:15 frequency = 90.56364 (heuristic)
#<freq>
	ldl	$28,336($sp)              	# [0]  gra_spill_temp_36
	s8addl	$8,$31,$3              	# [0]  
	ldl	$23,408($sp)              	# [1]  gra_spill_temp_45
	sll	$8,4,$2                   	# [1]  
	ldl	$20,344($sp)              	# [2]  gra_spill_temp_37
	sextw	$2,$2                   	# [2]  
	ldl	$17,416($sp)              	# [3]  gra_spill_temp_46
	sextw	$3,$3                   	# [3]  
	ldl	$18,368($sp)              	# [4]  gra_spill_temp_40
	addw	$28,63,$0                	# [4]  
	ldl	$24,352($sp)              	# [5]  gra_spill_temp_38
	selge	$28,$28,$0,$28          	# [5]  
	ldl	$25,360($sp)              	# [6]  gra_spill_temp_39
	mov	1,$0                      	# [6]  
	addl	$17,$17,$19              	# [7]  
	addl	$23,$20,$20              	# [7]  
	sextw	$19,$19                 	# [8]  
	cmpeq	$23,0,$23               	# [8]  
	s8addl	$20,$24,$20            	# [9]  
	s8addl	$17,$24,$24            	# [9]  
	s8addl	$17,$18,$17            	# [10]  
	ldl	$18,376($sp)              	# [10]  gra_spill_temp_41
	cmple	$0,$8,$0                	# [11]  
	sra	$28,6,$28                 	# [11]  
	selge	$8,$8,$31,$1            	# [12]  
	stl	$28,328($sp)              	# [12]  gra_spill_temp_35
	stl	$1,488($sp)               	# [13]  gra_spill_temp_55
	s8addl	$19,$25,$19            	# [13]  
	stl	$0,480($sp)               	# [14]  gra_spill_temp_54
	vfmov	$31,$5                  	# [14]  
	stl	$24,536($sp)              	# [15]  gra_spill_temp_61
	ldi	$4,-17664($15)            	# [15]  LX.BLOCK
	stl	$23,464($sp)              	# [16]  gra_spill_temp_52
	stl	$3,528($sp)               	# [17]  gra_spill_temp_60
	stl	$2,472($sp)               	# [18]  gra_spill_temp_53
	stl	$31,560($sp)              	# [19]  gra_spill_temp_64
	br	$31,.Lt_5_105              	# [20]  
#Block: 59 Pred: 58 22 Succ: 78 61 
	.align	4
.Lt_5_112:	# 0xc1c
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:59 frequency = 9056.36523 (heuristic)
#<freq> BB:59 => BB:78 probability = 0.75000
#<freq> BB:59 => BB:61 probability = 0.25000
#<freq>
	.loc	2	67	0
	ldl	$24,504($sp)              	# [0]  gra_spill_temp_57
	.loc	2	97	0
	ldl	$25,528($sp)              	# [1]  gra_spill_temp_60
	.loc	2	67	0
	srl	$24,24,$28                	# [4]  
	.loc	2	97	0
	ldl	$23,520($sp)              	# [5]  gra_spill_temp_59
	.loc	2	67	0
	sll	$28,24,$28                	# [5]  
	.loc	1	278	0
	ldl	$7,496($sp)               	# [6]  gra_spill_temp_56
	.loc	2	97	0
	sll	$25,44,$0                 	# [8]  
	.loc	2	67	0
	sll	$25,40,$25                	# [9]  
	.loc	2	97	0
	srl	$23,20,$1                 	# [9]  
	sll	$1,20,$1                  	# [10]  
	.loc	2	67	0
	srl	$25,40,$25                	# [10]  
	.loc	2	97	0
	srl	$0,44,$0                  	# [11]  
	.loc	2	67	0
	or	$25,$28,$24                	# [11]  
	.loc	2	97	0
	or	$0,$1,$23                  	# [12]  
	.loc	2	67	0
	stw	$24,160($sp)              	# [12]  dma_put
	.loc	2	97	0
	stw	$23,164($sp)              	# [13]  dma_put+4
	.loc	1	278	0
	vldd	$3,160($sp)              	# [14]  dma_put
	.loc	2	97	0
	stl	$23,520($sp)              	# [15]  gra_spill_temp_59
	.loc	2	67	0
	stl	$24,504($sp)              	# [16]  gra_spill_temp_57
	ldl	$16,576($sp)              	# [17]  gra_spill_temp_66
	.loc	1	278	0
	dma	$3,$20,$7                 	# [18]  
	ldw	$2,100($sp)               	# [19]  COUNT
	addw	$2,1,$2                  	# [23]  
	stw	$2,100($sp)               	# [24]  COUNT
	ldw	$7,100($sp)               	# [25]  COUNT
	ldw	$1,96($sp)                	# [26]  reply
	cmpeq	$7,$1,$1                	# [30]  
#<bpre> branch predict not taken
	bne	$1,.Lt_5_146              	# [31]  
#Block: 78 Pred: 59 Succ: 80 
.L_BB78_forward_2D5_slave_kernel:	# 0xc8c
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:78 frequency = 6792.27393 (heuristic)
#<freq>
#Block: 80 Pred: 60 78 Succ: 79 81 
.L_BB80_forward_2D5_slave_kernel:	# 0xc8c
#<loop> Loop body line 278
#<loop> unrolled 3 times
#<freq>
#<freq> BB:80 frequency = 18868.09375 (heuristic)
#<freq> BB:80 => BB:79 probability = 0.12000
#<freq> BB:80 => BB:81 probability = 0.88000
#<freq>
	ldw	$28,96($sp)               	# [0]  reply
	cmpeq	$7,$28,$28              	# [4]  
#<bpre> branch predict not taken
	bne	$28,.L_BB79_forward_2D5_slave_kernel 	# [5]  
#Block: 81 Pred: 80 Succ: 79 60 
.L_BB81_forward_2D5_slave_kernel:	# 0xc98
#<loop> Part of loop body line 278, head labeled .L_BB80_forward_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:81 frequency = 16603.92188 (heuristic)
#<freq> BB:81 => BB:79 probability = 0.12000
#<freq> BB:81 => BB:60 probability = 0.88000
#<freq>
	ldw	$0,96($sp)                	# [5]  reply
	cmpeq	$7,$0,$0                	# [9]  
#<bpre> branch predict not taken
	bne	$0,.L_BB79_forward_2D5_slave_kernel 	# [10]  
#Block: 60 Pred: 81 Succ: 79 80 
.Lt_5_148:	# 0xca4
#<loop> Part of loop body line 278, head labeled .L_BB80_forward_2D5_slave_kernel
#<freq>
#<freq> BB:60 frequency = 14611.45117 (heuristic)
#<freq> BB:60 => BB:79 probability = 0.12000
#<freq> BB:60 => BB:80 probability = 0.88000
#<freq>
	ldw	$1,96($sp)                	# [10]  reply
	cmpeq	$7,$1,$1                	# [14]  
#<bpre> branch predict taken
	beq	$1,.L_BB80_forward_2D5_slave_kernel 	# [15]  
#Block: 79 Pred: 60 80 81 Succ: 61 
.L_BB79_forward_2D5_slave_kernel:	# 0xcb0
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:79 frequency = 6792.27344 (heuristic)
#<freq>
#Block: 61 Pred: 79 59 Succ: 62 17 
.Lt_5_146:	# 0xcb0
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:61 frequency = 9056.36523 (heuristic)
#<freq> BB:61 => BB:62 probability = 0.01000
#<freq> BB:61 => BB:17 probability = 0.99000
#<freq>
	ldl	$3,560($sp)               	# [0]  gra_spill_temp_64
	addw	$18,64,$18               	# [0]  
	ldl	$7,488($sp)               	# [1]  gra_spill_temp_55
	ldl	$25,536($sp)              	# [2]  gra_spill_temp_61
	addw	$7,$3,$3                 	# [5]  
	ldl	$23,448($sp)              	# [6]  gra_spill_temp_50
	ldl	$24,440($sp)              	# [7]  gra_spill_temp_49
	addl	$25,$23,$25              	# [10]  
	ldl	$2,456($sp)               	# [11]  gra_spill_temp_51
	addl	$17,$23,$17              	# [11]  
	stl	$25,536($sp)              	# [12]  gra_spill_temp_61
	addl	$20,$23,$20              	# [12]  
	stl	$3,560($sp)               	# [13]  gra_spill_temp_64
	addl	$24,$19,$19              	# [14]  
	cmplt	$18,$2,$2               	# [15]  
#<bpre> branch predict not taken
	beq	$2,.Lt_5_101.bpre         	# [16]  
#Block: 17 Pred: 61 15 Succ: 18 19 
.Lt_5_105:	# 0xcf0
#<loop> Loop body line 222, nesting depth: 2, estimated iterations: 100
#<freq>
#<freq> BB:17 frequency = 9056.36426 (heuristic)
#<freq> BB:17 => BB:18 probability = 0.84000
#<freq> BB:17 => BB:19 probability = 0.16000
#<freq>
	.loc	2	97	0
	ldl	$23,528($sp)              	# [0]  gra_spill_temp_60
	.loc	2	67	0
	srl	$16,24,$24                	# [0]  
	.loc	2	97	0
	ldl	$25,512($sp)              	# [1]  gra_spill_temp_58
	.loc	2	67	0
	sll	$24,24,$24                	# [1]  
	.loc	2	97	0
	sll	$23,44,$28                	# [4]  
	.loc	2	67	0
	sll	$23,40,$23                	# [4]  
	.loc	2	97	0
	srl	$25,20,$0                 	# [5]  
	.loc	2	67	0
	srl	$23,40,$23                	# [5]  
	.loc	2	97	0
	sll	$0,20,$0                  	# [6]  
	srl	$28,44,$28                	# [6]  
	or	$28,$0,$28                 	# [7]  
	.loc	2	67	0
	or	$23,$24,$23                	# [7]  
	stw	$23,128($sp)              	# [8]  dma_get
	.loc	2	97	0
	stw	$28,132($sp)              	# [9]  dma_get+4
	.loc	1	225	0
	vldd	$24,128($sp)             	# [10]  dma_get
	ldl	$0,496($sp)               	# [11]  gra_spill_temp_56
	dma	$24,$17,$0                	# [15]  
	.loc	2	67	0
	srl	$23,24,$23                	# [15]  
	ldl	$24,472($sp)              	# [16]  gra_spill_temp_53
	.loc	2	97	0
	srl	$28,20,$28                	# [16]  
	sll	$28,20,$28                	# [17]  
	.loc	2	67	0
	sll	$23,24,$23                	# [17]  
	sll	$24,40,$16                	# [20]  
	.loc	2	97	0
	sll	$24,44,$24                	# [20]  
	srl	$24,44,$24                	# [21]  
	.loc	2	67	0
	srl	$16,40,$16                	# [21]  
	or	$16,$23,$16                	# [22]  
	.loc	2	97	0
	or	$24,$28,$25                	# [22]  
	.loc	1	225	0
	ldw	$24,100($sp)              	# [23]  COUNT
	.loc	2	97	0
	stw	$25,132($sp)              	# [24]  dma_get+4
	.loc	1	225	0
	addw	$24,1,$24                	# [27]  
	.loc	2	67	0
	stw	$16,128($sp)              	# [28]  dma_get
	.loc	1	226	0
	vldd	$23,128($sp)             	# [29]  dma_get
	.loc	1	225	0
	stw	$24,100($sp)              	# [30]  COUNT
	.loc	2	97	0
	stl	$25,512($sp)              	# [31]  gra_spill_temp_58
	.loc	1	226	0
	dma	$23,$19,$26               	# [33]  
	ldw	$7,100($sp)               	# [34]  COUNT
	ldl	$3,464($sp)               	# [35]  gra_spill_temp_52
	addw	$7,1,$7                  	# [38]  
	stw	$7,100($sp)               	# [39]  COUNT
#<bpre> branch predict not taken
	beq	$3,.Lt_5_107              	# [42]  
#Block: 18 Pred: 17 Succ: 20 
.L_BB18_forward_2D5_slave_kernel:	# 0xd94
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:18 frequency = 7607.34619 (heuristic)
#<freq>
	.loc	1	227	0
	fstd	$31,-9608($15)           	# [0]  LX+8056
#Block: 20 Pred: 18 19 Succ: 74 22 
.Lt_5_106:	# 0xd98
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:20 frequency = 9056.36426 (heuristic)
#<freq> BB:20 => BB:74 probability = 0.75000
#<freq> BB:20 => BB:22 probability = 0.25000
#<freq>
	.loc	1	228	0
	ldw	$7,100($sp)               	# [36]  COUNT
	ldw	$24,96($sp)               	# [37]  reply
	cmpeq	$7,$24,$24              	# [41]  
#<bpre> branch predict not taken
	bne	$24,.Lt_5_108             	# [42]  
#Block: 74 Pred: 20 Succ: 76 
.L_BB74_forward_2D5_slave_kernel:	# 0xda8
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:74 frequency = 6792.27344 (heuristic)
#<freq>
#Block: 76 Pred: 21 74 Succ: 75 77 
.L_BB76_forward_2D5_slave_kernel:	# 0xda8
#<loop> Loop body line 228
#<loop> unrolled 3 times
#<freq>
#<freq> BB:76 frequency = 18868.09180 (heuristic)
#<freq> BB:76 => BB:75 probability = 0.12000
#<freq> BB:76 => BB:77 probability = 0.88000
#<freq>
	ldw	$25,96($sp)               	# [0]  reply
	cmpeq	$7,$25,$25              	# [4]  
#<bpre> branch predict not taken
	bne	$25,.L_BB75_forward_2D5_slave_kernel 	# [5]  
#Block: 77 Pred: 76 Succ: 75 21 
.L_BB77_forward_2D5_slave_kernel:	# 0xdb4
#<loop> Part of loop body line 228, head labeled .L_BB76_forward_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:77 frequency = 16603.91992 (heuristic)
#<freq> BB:77 => BB:75 probability = 0.12000
#<freq> BB:77 => BB:21 probability = 0.88000
#<freq>
	ldw	$28,96($sp)               	# [5]  reply
	cmpeq	$7,$28,$28              	# [9]  
#<bpre> branch predict not taken
	bne	$28,.L_BB75_forward_2D5_slave_kernel 	# [10]  
#Block: 21 Pred: 77 Succ: 75 76 
.Lt_5_110:	# 0xdc0
#<loop> Part of loop body line 228, head labeled .L_BB76_forward_2D5_slave_kernel
#<freq>
#<freq> BB:21 frequency = 14611.44922 (heuristic)
#<freq> BB:21 => BB:75 probability = 0.12000
#<freq> BB:21 => BB:76 probability = 0.88000
#<freq>
	ldw	$0,96($sp)                	# [10]  reply
	cmpeq	$7,$0,$0                	# [14]  
#<bpre> branch predict taken
	beq	$0,.L_BB76_forward_2D5_slave_kernel 	# [15]  
#Block: 75 Pred: 21 76 77 Succ: 22 
.L_BB75_forward_2D5_slave_kernel:	# 0xdcc
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:75 frequency = 6792.27295 (heuristic)
#<freq>
#Block: 22 Pred: 75 20 Succ: 23 59 
.Lt_5_108:	# 0xdcc
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:22 frequency = 9056.36426 (heuristic)
#<freq> BB:22 => BB:23 probability = 0.94030
#<freq> BB:22 => BB:59 probability = 0.05970
#<freq>
	ldl	$1,480($sp)               	# [0]  gra_spill_temp_54
	stl	$16,576($sp)              	# [1]  gra_spill_temp_66
#<bpre> branch predict not taken
	beq	$1,.Lt_5_112.bpre         	# [4]  
#Block: 23 Pred: 22 Succ: 25 
.L_BB23_forward_2D5_slave_kernel:	# 0xdd8
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:23 frequency = 8515.68555 (heuristic)
#<freq>
	ldl	$28,432($sp)              	# [0]  gra_spill_temp_48
	vfmov	$31,$25                 	# [0]  
	ldl	$16,560($sp)              	# [1]  gra_spill_temp_64
	ldi	$23,-17664($15)           	# [1]  LX.BLOCK
	vfmov	$26,$24                 	# [2]  
	cmplt	$18,$28,$28             	# [4]  
	br	$31,.Lt_5_116              	# [5]  
#Block: 58 Pred: 42 46 Succ: 59 25 
	.align	4
.Lt_5_154:	# 0xdf4
.Lt_5_40:	# 0xdf4
#<loop> Part of loop body line 228, head labeled .Lt_5_116
#<freq>
#<freq> BB:58 frequency = 8515687.00000 (heuristic)
#<freq> BB:58 => BB:59 probability = 0.00100
#<freq> BB:58 => BB:25 probability = 0.99900
#<freq>
	.loc	1	259	0
	addw	$25,1,$25                	# [0]  
	ldi	$23,8($23)                	# [0]  
	cmpeq	$25,$8,$0               	# [1]  
	ldi	$24,16($24)               	# [1]  
	addw	$16,1,$16                	# [2]  
#<bpre> branch predict not taken
	bne	$0,.Lt_5_112.bpre         	# [2]  
#Block: 25 Pred: 58 23 Succ: 26 37 
.Lt_5_116:	# 0xe0c
#<loop> Loop body line 228, nesting depth: 3, estimated iterations: 1000
#<freq>
#<freq> BB:25 frequency = 8515686.00000 (heuristic)
#<freq> BB:25 => BB:26 probability = 0.75000
#<freq> BB:25 => BB:37 probability = 0.25000
#<freq>
	.loc	1	228	0
	cmplt	$16,$6,$1               	# [0]  
#<bpre> branch predict not taken
	bne	$1,.Lt_5_117              	# [1]  
#Block: 26 Pred: 25 36 Succ: 27 31 
	.align	4
.Lt_5_119:	# 0xe14
#<loop> Loop body line 228
#<freq>
#<freq> BB:26 frequency = 53223036.00000 (heuristic)
#<freq> BB:26 => BB:27 probability = 0.81116
#<freq> BB:26 => BB:31 probability = 0.18884
#<freq>
#<bpre> branch predict not taken
	beq	$21,.Lt_5_120             	# [0]  
#Block: 27 Pred: 26 Succ: 28 
.L_BB27_forward_2D5_slave_kernel:	# 0xe18
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:27 frequency = 43172332.00000 (heuristic)
#<freq>
	getc $3

	.loc	1	238	0
	addw	$5,1,$5                  	# [0]  
	ldi	$4,8($4)                  	# [0]  
	.loc	1	237	0
	vstd	$3,192($sp)              	# [1]  _v
	.loc	1	238	0
	cmple	$8,$5,$2                	# [1]  
	fldd	$7,192($sp)              	# [2]  _v
	.loc	1	240	0
	addw	$6,1,$6                  	# [2]  
	.loc	1	238	0
	stl	$2,552($sp)               	# [3]  gra_spill_temp_63
#Block: 28 Pred: 27 Succ: 29 31 
.L_BB28_forward_2D5_slave_kernel:	# 0xe40
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:28 frequency = 43172332.00000 (heuristic)
#<freq> BB:28 => BB:29 probability = 0.50000
#<freq> BB:28 => BB:31 probability = 0.50000
#<freq>
	ldl	$0,552($sp)               	# [0]  gra_spill_temp_63
	fstd	$7,-8($4)                	# [1]  id:252 not_variable+0x0
#<bpre> branch predict unknown
	beq	$0,.Lt_5_120              	# [4]  
#Block: 29 Pred: 28 Succ: 31 
.L_BB29_forward_2D5_slave_kernel:	# 0xe4c
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:29 frequency = 21586166.00000 (heuristic)
#<freq>
	.loc	1	239	0
	mulw	$9,$10,$7                	# [0]  
	ldl	$3,568($sp)               	# [0]  gra_spill_temp_65
	subw	$3,$7,$3                 	# [5]  
	cmplt	$10,$3,$2               	# [6]  
	seleq	$2,$3,$10,$2            	# [7]  
	s8addl	$2,$31,$1              	# [8]  
	subw	$5,$2,$5                 	# [8]  
	subl	$4,$1,$4                 	# [9]  
#Block: 31 Pred: 26 28 29 Succ: 32 93 
.Lt_5_120:	# 0xe6c
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:31 frequency = 53223036.00000 (heuristic)
#<freq> BB:31 => BB:32 probability = 0.81116
#<freq> BB:31 => BB:93 probability = 0.18884
#<freq>
	.loc	1	240	0
#<bpre> branch predict not taken
	beq	$22,.L_BB93_forward_2D5_slave_kernel 	# [0]  
#Block: 32 Pred: 31 Succ: 33 
.L_BB32_forward_2D5_slave_kernel:	# 0xe70
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:32 frequency = 43172332.00000 (heuristic)
#<freq>
	getr $2

	.loc	1	245	0
	addw	$5,1,$5                  	# [0]  
	.loc	1	247	0
	addw	$6,1,$6                  	# [0]  
	.loc	1	244	0
	vstd	$2,192($sp)              	# [1]  _v
	.loc	1	245	0
	cmple	$8,$5,$1                	# [1]  
	fldd	$0,192($sp)              	# [2]  _v
	ldi	$4,8($4)                  	# [2]  
	stl	$1,544($sp)               	# [3]  gra_spill_temp_62
	.loc	1	247	0
	cmplt	$16,$6,$7               	# [3]  
	.loc	1	245	0
	fstd	$0,-8($4)                	# [6]  id:253 not_variable+0x0
#Block: 33 Pred: 32 Succ: 34 36 
.L_BB33_forward_2D5_slave_kernel:	# 0xea0
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:33 frequency = 43172332.00000 (heuristic)
#<freq> BB:33 => BB:34 probability = 0.50000
#<freq> BB:33 => BB:36 probability = 0.50000
#<freq>
	ldl	$3,544($sp)               	# [0]  gra_spill_temp_62
#<bpre> branch predict unknown
	beq	$3,.Lt_5_124              	# [4]  
#Block: 34 Pred: 33 Succ: 36 
.L_BB34_forward_2D5_slave_kernel:	# 0xea8
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:34 frequency = 21586166.00000 (heuristic)
#<freq>
	.loc	1	246	0
	mulw	$9,$10,$3                	# [0]  
	ldl	$2,568($sp)               	# [0]  gra_spill_temp_65
	subw	$2,$3,$2                 	# [5]  
	cmplt	$10,$2,$1               	# [6]  
	seleq	$1,$2,$10,$1            	# [7]  
	s8addl	$1,$31,$0              	# [8]  
	subw	$5,$1,$5                 	# [8]  
	subl	$4,$0,$4                 	# [9]  
#Block: 36 Pred: 93 33 34 Succ: 37 26 
.Lt_5_124:	# 0xec8
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:36 frequency = 53223036.00000 (heuristic)
#<freq> BB:36 => BB:37 probability = 0.12000
#<freq> BB:36 => BB:26 probability = 0.88000
#<freq>
	.loc	1	247	0
#<bpre> branch predict taken
	beq	$7,.Lt_5_119              	# [0]  
#Block: 37 Pred: 36 25 Succ: 38 42 
.Lt_5_117:	# 0xecc
#<loop> Part of loop body line 228, head labeled .Lt_5_116
#<freq>
#<freq> BB:37 frequency = 8515686.00000 (heuristic)
#<freq> BB:37 => BB:38 probability = 0.84000
#<freq> BB:37 => BB:42 probability = 0.16000
#<freq>
	.loc	1	250	0
	fldd	$2,0($24)                	# [1]  id:256 not_variable+0x0
	fldd	$1,0($23)                	# [2]  id:255 not_variable+0x0
	fldd	$3,8064($23)             	# [3]  id:254 not_variable+0x0
	fldd	$0,8056($23)             	# [4]  id:258 not_variable+0x0
	fnmad	$1,$2,$3,$1             	# [7]  
	fldd	$7,8($24)                	# [8]  id:257 not_variable+0x0
	fnmad	$7,$0,$1,$7             	# [14]  
	fstd	$7,8064($23)             	# [24]  id:259 not_variable+0x0
#<bpre> branch predict not taken
	beq	$28,.Lt_5_133             	# [25]  
#Block: 38 Pred: 37 Succ: 39 40 
.L_BB38_forward_2D5_slave_kernel:	# 0xef0
#<loop> Part of loop body line 228, head labeled .Lt_5_116
#<freq>
#<freq> BB:38 frequency = 7153176.00000 (heuristic)
#<freq> BB:38 => BB:39 probability = 0.84000
#<freq> BB:38 => BB:40 probability = 0.16000
#<freq>
#<bpre> branch predict not taken
	beq	$11,.Lt_5_131             	# [0]  
#Block: 39 Pred: 38 Succ: 40 
.L_BB39_forward_2D5_slave_kernel:	# 0xef4
#<loop> Part of loop body line 228, head labeled .Lt_5_116
#<freq>
#<freq> BB:39 frequency = 6008668.00000 (heuristic)
#<freq>
	putc $7,$14

#Block: 40 Pred: 39 38 Succ: 41 42 
.Lt_5_131:	# 0xf00
#<loop> Part of loop body line 228, head labeled .Lt_5_116
#<freq>
#<freq> BB:40 frequency = 7153176.00000 (heuristic)
#<freq> BB:40 => BB:41 probability = 0.84000
#<freq> BB:40 => BB:42 probability = 0.16000
#<freq>
	.loc	1	256	0
#<bpre> branch predict not taken
	beq	$12,.Lt_5_133             	# [0]  
#Block: 41 Pred: 40 Succ: 42 
.L_BB41_forward_2D5_slave_kernel:	# 0xf04
#<loop> Part of loop body line 228, head labeled .Lt_5_116
#<freq>
#<freq> BB:41 frequency = 6008668.00000 (heuristic)
#<freq>
	putr $7,$13

#Block: 42 Pred: 37 40 41 52 56 Succ: 43 58 
.Lt_5_133:	# 0xf10
.Lt_5_129:	# 0xf10
.Lt_5_74:	# 0xf10
#<loop> Loop body line 259
#<freq>
#<freq> BB:42 frequency = 14646727.00000 (heuristic)
#<freq> BB:42 => BB:43 probability = 0.80000
#<freq> BB:42 => BB:58 probability = 0.20000
#<freq>
	.loc	1	259	0
	cmple	$27,$6,$7               	# [0]  
#<bpre> branch predict not taken
	bne	$7,.Lt_5_154.bpre         	# [1]  
#Block: 43 Pred: 42 Succ: 44 
.L_BB43_forward_2D5_slave_kernel:	# 0xf18
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:43 frequency = 11717382.00000 (heuristic)
#<freq>
	rcsr $7,0x34

#Block: 44 Pred: 43 Succ: 45 47 
.L_BB44_forward_2D5_slave_kernel:	# 0xf24
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:44 frequency = 11717382.00000 (heuristic)
#<freq> BB:44 => BB:45 probability = 0.84000
#<freq> BB:44 => BB:47 probability = 0.16000
#<freq>
	.loc	1	15	0
#<bpre> branch predict not taken
	beq	$7,.Lt_5_135              	# [0]  
#Block: 45 Pred: 44 Succ: 46 
.L_BB45_forward_2D5_slave_kernel:	# 0xf28
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:45 frequency = 9842601.00000 (heuristic)
#<freq>
	rcsr $7,0x35

#Block: 46 Pred: 45 Succ: 58 47 
.L_BB46_forward_2D5_slave_kernel:	# 0xf34
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:46 frequency = 9842601.00000 (heuristic)
#<freq> BB:46 => BB:58 probability = 0.56757
#<freq> BB:46 => BB:47 probability = 0.43243
#<freq>
	.loc	1	259	0
#<bpre> branch predict taken
	bne	$7,.Lt_5_154              	# [0]  
#Block: 47 Pred: 44 46 Succ: 48 52 
.Lt_5_135:	# 0xf38
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:47 frequency = 6131041.00000 (heuristic)
#<freq> BB:47 => BB:48 probability = 0.81116
#<freq> BB:47 => BB:52 probability = 0.18884
#<freq>
#<bpre> branch predict not taken
	beq	$21,.Lt_5_137             	# [0]  
#Block: 48 Pred: 47 Succ: 49 
.L_BB48_forward_2D5_slave_kernel:	# 0xf3c
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:48 frequency = 4973248.00000 (heuristic)
#<freq>
	getc $7

#Block: 49 Pred: 48 Succ: 50 51 
.L_BB49_forward_2D5_slave_kernel:	# 0xf48
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:49 frequency = 4973248.00000 (heuristic)
#<freq> BB:49 => BB:50 probability = 0.50000
#<freq> BB:49 => BB:51 probability = 0.50000
#<freq>
	.loc	1	265	0
	addw	$5,1,$5                  	# [3]  
	ldi	$4,8($4)                  	# [3]  
	.loc	1	264	0
	vstd	$7,224($sp)              	# [4]  _v
	.loc	1	265	0
	cmple	$8,$5,$0                	# [4]  
	fldd	$1,224($sp)              	# [5]  _v
	fstd	$1,-8($4)                	# [9]  id:262 not_variable+0x0
#<bpre> branch predict unknown
	beq	$0,.Lt_5_139              	# [10]  
#Block: 50 Pred: 49 Succ: 51 
.L_BB50_forward_2D5_slave_kernel:	# 0xf64
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:50 frequency = 2486624.00000 (heuristic)
#<freq>
	.loc	1	266	0
	mulw	$9,$10,$0                	# [0]  
	ldl	$7,568($sp)               	# [0]  gra_spill_temp_65
	subw	$7,$0,$7                 	# [5]  
	cmplt	$10,$7,$3               	# [6]  
	seleq	$3,$7,$10,$3            	# [7]  
	s8addl	$3,$31,$2              	# [8]  
	subw	$5,$3,$5                 	# [8]  
	subl	$4,$2,$4                 	# [9]  
#Block: 51 Pred: 50 49 Succ: 52 
.Lt_5_139:	# 0xf84
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:51 frequency = 4973248.00000 (heuristic)
#<freq>
	.loc	1	267	0
	addw	$6,1,$6                  	# [0]  
#Block: 52 Pred: 51 47 Succ: 53 42 
.Lt_5_137:	# 0xf88
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:52 frequency = 6131041.00000 (heuristic)
#<freq> BB:52 => BB:53 probability = 0.12000
#<freq> BB:52 => BB:42 probability = 0.88000
#<freq>
#<bpre> branch predict taken
	beq	$22,.Lt_5_133             	# [0]  
#Block: 53 Pred: 52 Succ: 54 
.L_BB53_forward_2D5_slave_kernel:	# 0xf8c
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:53 frequency = 735724.93750 (heuristic)
#<freq>
	getr $7

#Block: 54 Pred: 53 Succ: 55 56 
.L_BB54_forward_2D5_slave_kernel:	# 0xf98
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:54 frequency = 735724.93750 (heuristic)
#<freq> BB:54 => BB:55 probability = 0.50000
#<freq> BB:54 => BB:56 probability = 0.50000
#<freq>
	.loc	1	272	0
	addw	$5,1,$5                  	# [0]  
	ldi	$4,8($4)                  	# [0]  
	.loc	1	271	0
	vstd	$7,224($sp)              	# [1]  _v
	.loc	1	272	0
	cmple	$8,$5,$1                	# [1]  
	fldd	$2,224($sp)              	# [2]  _v
	fstd	$2,-8($4)                	# [6]  id:263 not_variable+0x0
#<bpre> branch predict unknown
	beq	$1,.Lt_5_143              	# [7]  
#Block: 55 Pred: 54 Succ: 56 
.L_BB55_forward_2D5_slave_kernel:	# 0xfb4
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:55 frequency = 367862.46875 (heuristic)
#<freq>
	.loc	1	273	0
	mulw	$9,$10,$1                	# [0]  
	ldl	$0,568($sp)               	# [0]  gra_spill_temp_65
	subw	$0,$1,$0                 	# [5]  
	cmplt	$10,$0,$7               	# [6]  
	seleq	$7,$0,$10,$7            	# [7]  
	s8addl	$7,$31,$3              	# [8]  
	subw	$5,$7,$5                 	# [8]  
	subl	$4,$3,$4                 	# [9]  
#Block: 56 Pred: 55 54 Succ: 42 
.Lt_5_143:	# 0xfd4
#<loop> Part of loop body line 259, head labeled .Lt_5_133
#<freq>
#<freq> BB:56 frequency = 735724.93750 (heuristic)
#<freq>
	.loc	1	274	0
	addw	$6,1,$6                  	# [7]  
	br	$31,.Lt_5_133              	# [15]  
#Block: 19 Pred: 17 Succ: 20 
.Lt_5_107:	# 0xfdc
#<loop> Part of loop body line 222, head labeled .Lt_5_105
#<freq>
#<freq> BB:19 frequency = 1449.01831 (heuristic)
#<freq>
	.loc	1	228	0
	ldl	$2,536($sp)               	# [0]  gra_spill_temp_61
	fldd	$2,-8($2)                	# [4]  id:249
	fstd	$2,-9608($15)            	# [8]  LX+8056
	br	$31,.Lt_5_106              	# [9]  
#Block: 6 Pred: 4 Succ: 7 
.Lt_5_92:	# 0xfec
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:6 frequency = 15.61464 (heuristic)
#<freq>
	.loc	1	220	0
	ldl	$27,312($sp)              	# [0]  gra_spill_temp_33
	mulw	$27,$8,$27               	# [4]  
	br	$31,.Lt_5_91               	# [4]  
#Block: 13 Pred: 11 Succ: 14 
.Lt_5_100:	# 0xff8
#<loop> Part of loop body line 73, head labeled .Lt_5_90
#<freq>
#<freq> BB:13 frequency = 15.61464 (heuristic)
#<freq>
	.loc	1	222	0
	vfmov	$31,$6                  	# [13]  
	br	$31,.Lt_5_99               	# [13]  
#Block: 63 Pred: 62 2 Succ: 
.Lt_5_86:	# 0x1000
#<freq>
#<freq> BB:63 frequency = 1.00001 (heuristic)
#<freq>
	.loc	1	285	0
# 281  		}
# 282  #undef HALO
# 283  #undef MLEN
# 284  	}
# 285  	return 0;
	ldl	$28,280($sp)              	# [0]  gra_spill_temp_29
	.loc	1	278	0
	vfmov	$31,$0                  	# [0]  
	.loc	1	285	0
	ldl	$26,0($sp)                	# [1]  return_address
	ldl	$14,256($sp)              	# [2]  gra_spill_temp_26
	ldl	$13,272($sp)              	# [3]  gra_spill_temp_28
	ldl	$12,296($sp)              	# [4]  gra_spill_temp_31
	ldl	$11,264($sp)              	# [5]  gra_spill_temp_27
	ldl	$10,288($sp)              	# [6]  gra_spill_temp_30
	ldl	$9,304($sp)               	# [7]  gra_spill_temp_32
	vfmov	$15,$sp                 	# [7]  
	vfmov	$28,$15                 	# [8]  
	ret	$31,($26),1               	# [8]  
#Block: 93 Pred: 31 Succ: 36 
	.align	4
.L_BB93_forward_2D5_slave_kernel:	# 0x1030
#<loop> Part of loop body line 228, head labeled .Lt_5_119
#<freq>
#<freq> BB:93 frequency = 10050702.00000 (heuristic)
#<freq>
	.loc	1	247	0
	cmplt	$16,$6,$7               	# [7]  
	.loc	1	285	0
	br	$31,.Lt_5_124              	# [15]  
.Lt_5_101.bpre:
	br .Lt_5_101
.Lt_5_112.bpre:
	br .Lt_5_112
.Lt_5_154.bpre:
	br .Lt_5_154
.L_CC_forward_2D5_slave_kernel:
#PU cycle count: 1250389504.000000
	.end	forward_2D5_slave_kernel
	.section .text1

	# Program Unit: backward_2D5_slave_kernel
	.align 4
	.ent	backward_2D5_slave_kernel#
	.globl	backward_2D5_slave_kernel
backward_2D5_slave_kernel:	# 0xfc0
	# ids = 64
	# reply = 96
	# COUNT = 100
	# dma_get = 128
	# dma_put = 160
	# LX = -17664
	# LA = -41664
	# _v = 192
	# _v = 224
	# pad_4 = -17664
	# return_address = 0
	# reserved_spill_temp_67 = 32
	# gra_spill_temp_68 = 256
	# gra_spill_temp_69 = 264
	# gra_spill_temp_70 = 272
	# gra_spill_temp_71 = 280
	# gra_spill_temp_72 = 288
	# gra_spill_temp_73 = 296
	# gra_spill_temp_74 = 304
	# gra_spill_temp_75 = 312
	# gra_spill_temp_76 = 320
	# gra_spill_temp_77 = 328
	# gra_spill_temp_78 = 336
	# gra_spill_temp_79 = 344
	# gra_spill_temp_80 = 352
	# gra_spill_temp_81 = 360
	# gra_spill_temp_82 = 368
	# gra_spill_temp_83 = 376
	# gra_spill_temp_84 = 384
	# gra_spill_temp_85 = 392
	# gra_spill_temp_86 = 400
	# gra_spill_temp_87 = 408
	# gra_spill_temp_88 = 416
	# gra_spill_temp_89 = 424
	# gra_spill_temp_90 = 432
	# gra_spill_temp_91 = 440
	# gra_spill_temp_92 = 448
	# gra_spill_temp_93 = 456
	# gra_spill_temp_94 = 464
	# gra_spill_temp_95 = 472
	# gra_spill_temp_96 = 480
	# gra_spill_temp_97 = 488
	# gra_spill_temp_98 = 496
	# gra_spill_temp_99 = 504
	# gra_spill_temp_100 = 512
	# gra_spill_temp_101 = 520
	# gra_spill_temp_102 = 528
	# gra_spill_temp_103 = 536
	# gra_spill_temp_104 = 544
	# gra_spill_temp_105 = 552
	# gra_spill_temp_106 = 560
	# gra_spill_temp_107 = 568
	# gra_spill_temp_108 = 576
	# gra_spill_temp_109 = 584
#Block: 1 Pred: Succ: 2 
	.loc	1	289	0
# 286  }
# 287  
# 288  int backward_2D5_slave_kernel(double *X, double *A, double *B, int M, int N, int L)
# 289  {
.L_BB1_backward_2D5_slave_kernel:	# 0xfc0
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq>
	ldih	$gp,0($27)               	!gpdisp!6	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!6	# [1]  0
	
$ng..backward_2D5_slave_kernel:
	vfmov	$15,$0                  	# [2]  
	ldi	$1,-23264($31)            	# [2]  
	ldih	$1,1($1)                 	# [3]  
	subl	$sp,$1,$sp               	# [4]  
	addl	$sp,$1,$15               	# [5]  
	stl	$9,304($sp)               	# [5]  gra_spill_temp_74
	stl	$10,288($sp)              	# [6]  gra_spill_temp_72
#	.vframe $15
	stl	$11,264($sp)              	# [7]  gra_spill_temp_69
#	.spillsp $9, 0
	stl	$12,296($sp)              	# [8]  gra_spill_temp_73
#	.spillsp $10, 0
	stl	$0,280($sp)               	# [9]  gra_spill_temp_71
#	.spillsp $11, 0
	stl	$13,272($sp)              	# [10]  gra_spill_temp_70
#	.spillsp $12, 0
	stl	$14,256($sp)              	# [11]  gra_spill_temp_68
#	.spillsp $15, 0
	stl	$20,576($sp)              	# [12]  gra_spill_temp_108
#	.spillsp $13, 0
	stl	$19,448($sp)              	# [13]  gra_spill_temp_92
#	.spillsp $14, 0
	stl	$18,360($sp)              	# [14]  gra_spill_temp_81
	stl	$17,352($sp)              	# [15]  gra_spill_temp_80
	stl	$16,344($sp)              	# [16]  gra_spill_temp_79
	.loc	1	295	0
# 291  	int gr = -1, gc = -1, pr = -1, pc = -1;
# 292  	//Init id information
# 293  	{
# 294  		int ids[8];
# 295  		Cal_ID(ids);
	ldi	$16,64($sp)               	# [16]  ids
	.loc	1	289	0
	stl	$26,0($sp)                	# [17]  return_address
	.loc	1	295	0
	.prologue
	bsr	$26,$ng..slave_Cal_ID     	# [18]  slave_Cal_ID
#Block: 2 Pred: 1 Succ: 3 63 
.L_BB2_backward_2D5_slave_kernel:	# 0x1024
#<freq>
#<freq> BB:2 frequency = 1.00000 (heuristic)
#<freq> BB:2 => BB:3 probability = 0.97590
#<freq> BB:2 => BB:63 probability = 0.02410
#<freq>
	.loc	2	79	0
	ldw	$8,132($sp)               	# [0]  dma_get+4
	ornot	$31,$31,$7              	# [0]  
	ldw	$2,164($sp)               	# [1]  dma_put+4
	srl	$7,60,$7                  	# [1]  
	mov	1,$3                      	# [2]  
	sll	$7,24,$7                  	# [2]  
	sll	$3,24,$3                  	# [3]  
	.loc	1	296	0
# 296  		id = ids[0];
	ldw	$16,64($sp)               	# [3]  ids
	.loc	2	79	0
	and	$3,$7,$3                  	# [4]  
	andnot	$8,$7,$8               	# [4]  
	.loc	2	73	0
	ldl	$1,576($sp)               	# [5]  gra_spill_temp_108
	.loc	2	85	0
	ldi	$6,-1($31)                	# [5]  
	ldih	$6,4096($6)              	# [6]  
	.loc	2	79	0
	or	$3,$8,$3                   	# [6]  
	andnot	$2,$7,$2               	# [7]  
	.loc	2	85	0
	and	$3,$6,$3                  	# [7]  
	and	$2,$6,$2                  	# [8]  
	.loc	1	296	0
	ldi	$6,96($sp)                	# [8]  reply
	.loc	1	306	0
# 302  	//Begin Cal
# 303  	{
# 304  #define HALO 4
# 305  #define MLEN 1000 
# 306  		volatile int reply = 0;
	stw	$31,96($sp)               	# [9]  reply
	.loc	1	297	0
	ldw	$14,68($sp)               	# [10]  ids+4
	.loc	1	298	0
	ldw	$5,72($sp)                	# [11]  ids+8
	.loc	1	299	0
	ldw	$26,76($sp)               	# [12]  ids+12
	.loc	1	300	0
	ldw	$4,80($sp)                	# [13]  ids+16
	.loc	1	307	0
# 307  		volatile int COUNT = 0;
	stw	$31,100($sp)              	# [14]  COUNT
	.loc	2	73	0
	sth	$6,136($sp)               	# [15]  dma_get+8
	sth	$6,168($sp)               	# [16]  dma_put+8
	.loc	2	85	0
	stl	$2,520($sp)               	# [17]  gra_spill_temp_101
	stw	$2,164($sp)               	# [18]  dma_put+4
	stl	$3,512($sp)               	# [19]  gra_spill_temp_100
	stw	$3,132($sp)               	# [20]  dma_get+4
	.loc	1	296	0
	stl	$16,368($sp)              	# [21]  gra_spill_temp_82
	.loc	2	103	0
	stw	$31,140($sp)              	# [22]  dma_get+12
	stw	$31,172($sp)              	# [23]  dma_put+12
	.loc	2	73	0
#<bpre> branch predict not taken
	ble	$1,.Lt_6_86               	# [24]  
#Block: 3 Pred: 2 Succ: 4 
.L_BB3_backward_2D5_slave_kernel:	# 0x10ac
#<freq>
#<freq> BB:3 frequency = 0.97590 (heuristic)
#<freq>
	subw	$1,1,$0                  	# [0]  
	ldi	$2,28312($31)             	# [0]  
	ldih	$2,-31982($2)            	# [1]  
	vfmov	$1,$13                  	# [1]  
	subw	$31,$0,$1                	# [2]  
	sll	$2,32,$2                  	# [2]  
	selge	$0,$0,$1,$1             	# [3]  
	ldi	$18,-17664($15)           	# [3]  LX.BLOCK
	umulh	$1,$2,$1                	# [4]  
	vfmov	$31,$10                 	# [5]  
	srl	$1,9,$1                   	# [9]  
	subw	$31,$1,$2                	# [10]  
	selge	$0,$1,$2,$1             	# [11]  
	addw	$1,1,$1                  	# [12]  
	divw	$0,$1,$9
	ldl	$17,448($sp)              	# [13]  gra_spill_temp_92
	addw	$9,3,$12                 	# [13]  
	ldl	$19,368($sp)              	# [14]  gra_spill_temp_82
	sll	$13,6,$8                  	# [14]  
	ldw	$21,160($sp)              	# [15]  dma_put
	sextw	$8,$8                   	# [15]  
	selge	$9,$9,$12,$9            	# [16]  
	subw	$31,$13,$12              	# [16]  
	addw	$17,63,$24               	# [17]  
	sll	$12,6,$12                 	# [17]  
	selge	$17,$17,$24,$24         	# [18]  
	subw	$17,$19,$22              	# [18]  
	sra	$24,6,$24                 	# [19]  
	mulw	$22,$13,$23              	# [19]  
	vfmov	$24,$25                 	# [20]  
	sll	$24,6,$16                 	# [20]  
	sextw	$16,$16                 	# [21]  
	sra	$9,2,$9                   	# [21]  
	subw	$17,$16,$16              	# [22]  
	s4subl	$8,$8,$8               	# [22]  
	sextw	$8,$8                   	# [23]  
	cmplt	$19,$16,$16             	# [23]  
	s4addl	$9,$31,$9              	# [24]  
	sextw	$12,$12                 	# [24]  
	ldi	$20,23872($31)            	# [25]  
	s8addl	$12,$31,$12            	# [25]  
	ldih	$20,-1($20)              	# [26]  
	sextw	$9,$9                   	# [26]  
	stl	$16,384($sp)              	# [27]  gra_spill_temp_84
	s8addl	$8,$31,$8              	# [27]  
	ldw	$16,128($sp)              	# [28]  dma_get
	addw	$24,1,$24                	# [28]  
	addw	$22,63,$22               	# [29]  
	stl	$21,504($sp)              	# [29]  gra_spill_temp_99
	cmpeq	$19,0,$21               	# [30]  
	cmplt	$19,$17,$19             	# [30]  
	subw	$17,1,$17                	# [31]  
	ldi	$18,8032($18)             	# [31]  
	stl	$18,496($sp)              	# [32]  gra_spill_temp_98
	addw	$9,4,$9                  	# [32]  
	stl	$17,424($sp)              	# [33]  gra_spill_temp_89
	addl	$15,$20,$20              	# [33]  
	stl	$19,376($sp)              	# [34]  gra_spill_temp_83
	stl	$21,392($sp)              	# [35]  gra_spill_temp_85
	cmple	$31,$5,$21              	# [35]  
	stl	$22,336($sp)              	# [36]  gra_spill_temp_78
	cmple	$31,$4,$22              	# [36]  
	stl	$24,320($sp)              	# [37]  gra_spill_temp_76
	stl	$8,440($sp)               	# [38]  gra_spill_temp_91
	stl	$12,432($sp)              	# [39]  gra_spill_temp_90
	cmple	$31,$26,$12             	# [39]  
	stl	$25,312($sp)              	# [40]  gra_spill_temp_75
	stl	$23,408($sp)              	# [41]  gra_spill_temp_87
	stl	$13,416($sp)              	# [42]  gra_spill_temp_88
	cmple	$31,$14,$13             	# [42]  
	stl	$31,400($sp)              	# [43]  gra_spill_temp_86
	br	$31,.Lt_6_90               	# [44]  
#Block: 62 Pred: 61 14 Succ: 63 4 
	.align	4
.Lt_6_101:	# 0x11d4
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:62 frequency = 97.59152 (heuristic)
#<freq> BB:62 => BB:63 probability = 0.01000
#<freq> BB:62 => BB:4 probability = 0.99000
#<freq>
	.loc	1	382	0
# 378  							idx ++;
# 379  						}
# 380  					}
# 381  				}
# 382  				WXL_DMA_NEW(dma_put, X+(M*N-i*N-k-LEN), LX[1], sizeof(double)*(LEN), COUNT);
	ldl	$3,400($sp)               	# [0]  gra_spill_temp_86
	addw	$10,1,$10                	# [0]  
	ldl	$4,576($sp)               	# [1]  gra_spill_temp_108
	addw	$3,$9,$3                 	# [4]  
	stl	$3,400($sp)               	# [5]  gra_spill_temp_86
	cmplt	$3,$4,$3                	# [8]  
	ldl	$4,408($sp)               	# [9]  gra_spill_temp_87
	ldl	$5,416($sp)               	# [10]  gra_spill_temp_88
	subw	$4,$9,$4                 	# [13]  
	stl	$4,408($sp)               	# [14]  gra_spill_temp_87
	subw	$5,$9,$5                 	# [17]  
	stl	$5,416($sp)               	# [18]  gra_spill_temp_88
#<bpre> branch predict not taken
	beq	$3,.Lt_6_86               	# [19]  
#Block: 4 Pred: 3 62 Succ: 5 6 
.Lt_6_90:	# 0x1208
#<loop> Loop body line 73, nesting depth: 1, estimated iterations: 100
#<freq>
#<freq> BB:4 frequency = 97.59151 (heuristic)
#<freq> BB:4 => BB:5 probability = 0.84000
#<freq> BB:4 => BB:6 probability = 0.16000
#<freq>
	.loc	2	73	0
	ldl	$17,416($sp)              	# [0]  gra_spill_temp_88
	ldl	$6,384($sp)               	# [1]  gra_spill_temp_84
	cmplt	$17,$9,$8               	# [4]  
	seleq	$8,$9,$17,$8            	# [5]  
#<bpre> branch predict not taken
	beq	$6,.Lt_6_92               	# [8]  
#Block: 5 Pred: 4 Succ: 7 
.L_BB5_backward_2D5_slave_kernel:	# 0x121c
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:5 frequency = 81.97688 (heuristic)
#<freq>
	.loc	1	324	0
	ldl	$28,320($sp)              	# [0]  gra_spill_temp_76
	mulw	$28,$8,$28               	# [4]  
#Block: 7 Pred: 5 6 Succ: 8 11 
.Lt_6_91:	# 0x1224
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:7 frequency = 97.59151 (heuristic)
#<freq> BB:7 => BB:8 probability = 0.71053
#<freq> BB:7 => BB:11 probability = 0.28947
#<freq>
	ldi	$0,-3($31)                	# [5]  
	cmplt	$8,$0,$0                	# [12]  
#<bpre> branch predict not taken
	bne	$0,.Lt_6_93               	# [13]  
#Block: 8 Pred: 7 Succ: 64 
.L_BB8_backward_2D5_slave_kernel:	# 0x1230
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:8 frequency = 69.34134 (heuristic)
#<freq>
	vfmov	$31,$5                  	# [0]  
	ldi	$6,-17664($15)            	# [0]  LX.BLOCK
	addw	$8,4,$7                  	# [1]  
#Block: 64 Pred: 8 Succ: 68 67 
.L_BB64_backward_2D5_slave_kernel:	# 0x123c
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:64 frequency = 69.34134 (heuristic)
#<freq> BB:64 => BB:68 probability = 0.75000
#<freq> BB:64 => BB:67 probability = 0.25000
#<freq>
	and	$7,3,$4                   	# [0]  
#<bpre> branch predict not taken
	beq	$4,.L_BB67_backward_2D5_slave_kernel 	# [1]  
#Block: 68 Pred: 64 Succ: 67 69 
.L_BB68_backward_2D5_slave_kernel:	# 0x1244
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<loop> Unrolling remainder loop (at most 3 iterations)
#<freq>
#<freq> BB:68 frequency = 52.00600 (heuristic)
#<freq> BB:68 => BB:67 probability = 0.33333
#<freq> BB:68 => BB:69 probability = 0.66667
#<freq>
	subw	$4,1,$4                  	# [0]  
	.loc	1	325	0
	ldi	$6,8($6)                  	# [0]  
	addw	$31,1,$5                 	# [1]  
	fstd	$31,-17664($15)          	# [1]  LX.BLOCK
#<bpre> branch predict not taken
	beq	$4,.L_BB67_backward_2D5_slave_kernel 	# [2]  
#Block: 69 Pred: 68 Succ: 67 70 
.L_BB69_backward_2D5_slave_kernel:	# 0x1258
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:69 frequency = 34.67067 (heuristic)
#<freq> BB:69 => BB:67 probability = 0.50000
#<freq> BB:69 => BB:70 probability = 0.50000
#<freq>
	ldi	$6,-17664($15)            	# [0]  LX.BLOCK
	subw	$4,1,$17                 	# [0]  
	ldi	$6,16($6)                 	# [1]  
	mov	2,$5                      	# [1]  
	fstd	$31,-17656($15)          	# [2]  LX.BLOCK+8
#<bpre> branch predict unknown
	beq	$17,.L_BB67_backward_2D5_slave_kernel 	# [3]  
#Block: 70 Pred: 69 Succ: 67 
.L_BB70_backward_2D5_slave_kernel:	# 0x1270
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:70 frequency = 17.33533 (heuristic)
#<freq>
	ldi	$6,-17664($15)            	# [0]  LX.BLOCK
	mov	3,$5                      	# [0]  
	ldi	$6,24($6)                 	# [1]  
	fstd	$31,-17648($15)          	# [1]  LX.BLOCK+16
#Block: 67 Pred: 64 68 69 70 Succ: 72 71 
.L_BB67_backward_2D5_slave_kernel:	# 0x1280
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:67 frequency = 69.34134 (heuristic)
#<freq> BB:67 => BB:72 probability = 0.99602
#<freq> BB:67 => BB:71 probability = 0.00398
#<freq>
	sra	$7,2,$23                  	# [0]  
#<bpre> branch predict not taken
	beq	$23,.L_BB71_backward_2D5_slave_kernel 	# [1]  
#Block: 72 Pred: 67 Succ: 66 
.L_BB72_backward_2D5_slave_kernel:	# 0x1288
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:72 frequency = 69.06508 (heuristic)
#<freq>
	vfmov	$31,$4                  	# [0]  
#Block: 66 Pred: 66 72 Succ: 66 73 
	.align	4
.L_BB66_backward_2D5_slave_kernel:	# 0x128c
#<loop> Loop body line 324, nesting depth: 2, estimated iterations: 251
#<loop> unrolled 4 times
#<freq>
#<freq> BB:66 frequency = 13036.17188 (heuristic)
#<freq> BB:66 => BB:66 probability = 0.99602
#<freq> BB:66 => BB:73 probability = 0.00398
#<freq>
	addw	$5,4,$5                  	# [0]  
	fstd	$4,24($6)                	# [0]  id:277 not_variable+0x0
	cmpeq	$5,$7,$17               	# [1]  
	fstd	$4,16($6)                	# [1]  id:277 not_variable+0x0
	fstd	$4,8($6)                 	# [2]  id:277 not_variable+0x0
	fstd	$4,0($6)                 	# [3]  id:277 not_variable+0x0
	ldi	$6,32($6)                 	# [3]  
#<bpre> branch predict taken
	beq	$17,.L_BB66_backward_2D5_slave_kernel 	# [4]  
#Block: 73 Pred: 66 Succ: 71 
.L_BB73_backward_2D5_slave_kernel:	# 0x12ac
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:73 frequency = 51.93694 (heuristic)
#<freq>
#Block: 71 Pred: 67 73 Succ: 65 
.L_BB71_backward_2D5_slave_kernel:	# 0x12ac
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:71 frequency = 0.00000 (heuristic)
#<freq>
#Block: 65 Pred: 71 Succ: 11 
.L_BB65_backward_2D5_slave_kernel:	# 0x12ac
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:65 frequency = 69.34134 (heuristic)
#<freq>
#Block: 11 Pred: 65 7 Succ: 12 13 
.Lt_6_93:	# 0x12ac
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:11 frequency = 97.59151 (heuristic)
#<freq> BB:11 => BB:12 probability = 0.84000
#<freq> BB:11 => BB:13 probability = 0.16000
#<freq>
	ldl	$18,392($sp)              	# [0]  gra_spill_temp_85
#<bpre> branch predict not taken
	beq	$18,.Lt_6_100             	# [4]  
#Block: 12 Pred: 11 Succ: 14 
.L_BB12_backward_2D5_slave_kernel:	# 0x12b4
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:12 frequency = 81.97688 (heuristic)
#<freq>
	.loc	1	326	0
	vfmov	$8,$6                   	# [0]  
#Block: 14 Pred: 12 13 Succ: 15 62 
.Lt_6_99:	# 0x12b8
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:14 frequency = 97.59151 (heuristic)
#<freq> BB:14 => BB:15 probability = 0.92799
#<freq> BB:14 => BB:62 probability = 0.07201
#<freq>
	ldl	$19,376($sp)              	# [0]  gra_spill_temp_83
#<bpre> branch predict not taken
	beq	$19,.Lt_6_101.bpre        	# [4]  
#Block: 15 Pred: 14 Succ: 17 
.L_BB15_backward_2D5_slave_kernel:	# 0x12c0
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:15 frequency = 90.56364 (heuristic)
#<freq>
	ldl	$17,576($sp)              	# [0]  gra_spill_temp_108
	s8addl	$8,$31,$18             	# [0]  
	ldl	$23,368($sp)              	# [1]  gra_spill_temp_82
	sextw	$18,$18                 	# [1]  
	ldl	$24,400($sp)              	# [2]  gra_spill_temp_86
	selge	$8,$8,$31,$4            	# [2]  
	ldl	$1,336($sp)               	# [3]  gra_spill_temp_78
	s4subl	$8,$8,$3               	# [3]  
	ldl	$0,352($sp)               	# [4]  gra_spill_temp_80
	s8addl	$3,$31,$3              	# [4]  
	mulw	$23,$17,$17              	# [5]  
	ldl	$27,344($sp)              	# [5]  gra_spill_temp_79
	ldl	$25,408($sp)              	# [6]  gra_spill_temp_87
	sextw	$3,$3                   	# [6]  
	stl	$18,528($sp)              	# [7]  gra_spill_temp_102
	addw	$1,63,$2                 	# [7]  
	ldl	$18,360($sp)              	# [8]  gra_spill_temp_81
	selge	$1,$1,$2,$1             	# [8]  
	mov	1,$2                      	# [9]  
	stl	$4,480($sp)               	# [9]  gra_spill_temp_96
	addw	$17,$24,$17              	# [10]  
	ldi	$4,-17664($15)            	# [10]  LX.BLOCK
	s4subl	$17,$17,$17            	# [11]  
	cmpeq	$24,0,$24               	# [11]  
	sextw	$17,$17                 	# [12]  
	cmple	$2,$8,$2                	# [12]  
	s8addl	$17,$0,$17             	# [13]  
	s8addl	$8,$4,$0               	# [13]  
	sra	$1,6,$1                   	# [14]  
	subw	$25,$8,$19               	# [14]  
	s8addl	$25,$27,$25            	# [15]  
	s8addl	$19,$18,$18            	# [15]  
	stl	$25,536($sp)              	# [16]  gra_spill_temp_103
	s8addl	$19,$27,$19            	# [16]  
	stl	$1,328($sp)               	# [17]  gra_spill_temp_77
	vfmov	$31,$5                  	# [17]  
	stl	$0,488($sp)               	# [18]  gra_spill_temp_97
	stl	$2,472($sp)               	# [19]  gra_spill_temp_95
	stl	$24,456($sp)              	# [20]  gra_spill_temp_93
	stl	$3,464($sp)               	# [21]  gra_spill_temp_94
	stl	$23,568($sp)              	# [22]  gra_spill_temp_107
	stl	$31,560($sp)              	# [23]  gra_spill_temp_106
	br	$31,.Lt_6_105              	# [24]  
#Block: 59 Pred: 58 22 Succ: 78 61 
	.align	4
.Lt_6_112:	# 0x136c
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:59 frequency = 9056.36523 (heuristic)
#<freq> BB:59 => BB:78 probability = 0.75000
#<freq> BB:59 => BB:61 probability = 0.25000
#<freq>
	.loc	2	67	0
	ldl	$1,504($sp)               	# [0]  gra_spill_temp_99
	.loc	2	97	0
	ldl	$2,528($sp)               	# [1]  gra_spill_temp_102
	.loc	2	67	0
	srl	$1,24,$3                  	# [4]  
	.loc	2	97	0
	ldl	$0,520($sp)               	# [5]  gra_spill_temp_101
	.loc	2	67	0
	sll	$3,24,$3                  	# [5]  
	.loc	1	382	0
	ldl	$27,496($sp)              	# [6]  gra_spill_temp_98
	.loc	2	97	0
	sll	$2,44,$7                  	# [8]  
	.loc	2	67	0
	sll	$2,40,$2                  	# [9]  
	.loc	2	97	0
	srl	$0,20,$23                 	# [9]  
	sll	$23,20,$23                	# [10]  
	.loc	2	67	0
	srl	$2,40,$2                  	# [10]  
	.loc	2	97	0
	srl	$7,44,$7                  	# [11]  
	.loc	2	67	0
	or	$2,$3,$1                   	# [11]  
	.loc	2	97	0
	or	$7,$23,$0                  	# [12]  
	.loc	2	67	0
	stw	$1,160($sp)               	# [12]  dma_put
	.loc	2	97	0
	stw	$0,164($sp)               	# [13]  dma_put+4
	.loc	1	382	0
	vldd	$25,160($sp)             	# [14]  dma_put
	.loc	2	97	0
	stl	$0,520($sp)               	# [15]  gra_spill_temp_101
	.loc	2	67	0
	stl	$1,504($sp)               	# [16]  gra_spill_temp_99
	ldl	$16,584($sp)              	# [17]  gra_spill_temp_109
	.loc	1	382	0
	dma	$25,$19,$27               	# [18]  
	ldw	$24,100($sp)              	# [19]  COUNT
	addw	$24,1,$24                	# [23]  
	stw	$24,100($sp)              	# [24]  COUNT
	ldw	$7,100($sp)               	# [25]  COUNT
	ldw	$23,96($sp)               	# [26]  reply
	cmpeq	$7,$23,$23              	# [30]  
#<bpre> branch predict not taken
	bne	$23,.Lt_6_146             	# [31]  
#Block: 78 Pred: 59 Succ: 80 
.L_BB78_backward_2D5_slave_kernel:	# 0x13dc
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:78 frequency = 6792.27393 (heuristic)
#<freq>
#Block: 80 Pred: 60 78 Succ: 79 81 
.L_BB80_backward_2D5_slave_kernel:	# 0x13dc
#<loop> Loop body line 382
#<loop> unrolled 3 times
#<freq>
#<freq> BB:80 frequency = 18868.09375 (heuristic)
#<freq> BB:80 => BB:79 probability = 0.12000
#<freq> BB:80 => BB:81 probability = 0.88000
#<freq>
	ldw	$3,96($sp)                	# [0]  reply
	cmpeq	$7,$3,$3                	# [4]  
#<bpre> branch predict not taken
	bne	$3,.L_BB79_backward_2D5_slave_kernel 	# [5]  
#Block: 81 Pred: 80 Succ: 79 60 
.L_BB81_backward_2D5_slave_kernel:	# 0x13e8
#<loop> Part of loop body line 382, head labeled .L_BB80_backward_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:81 frequency = 16603.92188 (heuristic)
#<freq> BB:81 => BB:79 probability = 0.12000
#<freq> BB:81 => BB:60 probability = 0.88000
#<freq>
	ldw	$23,96($sp)               	# [5]  reply
	cmpeq	$7,$23,$23              	# [9]  
#<bpre> branch predict not taken
	bne	$23,.L_BB79_backward_2D5_slave_kernel 	# [10]  
#Block: 60 Pred: 81 Succ: 79 80 
.Lt_6_148:	# 0x13f4
#<loop> Part of loop body line 382, head labeled .L_BB80_backward_2D5_slave_kernel
#<freq>
#<freq> BB:60 frequency = 14611.45117 (heuristic)
#<freq> BB:60 => BB:79 probability = 0.12000
#<freq> BB:60 => BB:80 probability = 0.88000
#<freq>
	ldw	$24,96($sp)               	# [10]  reply
	cmpeq	$7,$24,$24              	# [14]  
#<bpre> branch predict taken
	beq	$24,.L_BB80_backward_2D5_slave_kernel 	# [15]  
#Block: 79 Pred: 60 80 81 Succ: 61 
.L_BB79_backward_2D5_slave_kernel:	# 0x1400
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:79 frequency = 6792.27344 (heuristic)
#<freq>
#Block: 61 Pred: 79 59 Succ: 62 17 
.Lt_6_146:	# 0x1400
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:61 frequency = 9056.36523 (heuristic)
#<freq> BB:61 => BB:62 probability = 0.01000
#<freq> BB:61 => BB:17 probability = 0.99000
#<freq>
	ldl	$0,536($sp)               	# [0]  gra_spill_temp_103
	ldl	$2,432($sp)               	# [1]  gra_spill_temp_90
	ldl	$25,568($sp)              	# [2]  gra_spill_temp_107
	addl	$0,$2,$0                 	# [5]  
	ldl	$27,448($sp)              	# [6]  gra_spill_temp_92
	addl	$18,$2,$18               	# [6]  
	stl	$0,536($sp)               	# [7]  gra_spill_temp_103
	addl	$19,$2,$19               	# [7]  
	ldl	$0,480($sp)               	# [8]  gra_spill_temp_96
	addw	$25,64,$25               	# [9]  
	stl	$25,568($sp)              	# [10]  gra_spill_temp_107
	cmplt	$25,$27,$25             	# [10]  
	ldl	$27,560($sp)              	# [11]  gra_spill_temp_106
	ldl	$1,440($sp)               	# [12]  gra_spill_temp_91
	addw	$0,$27,$27               	# [15]  
	stl	$27,560($sp)              	# [16]  gra_spill_temp_106
	addl	$1,$17,$17               	# [19]  
#<bpre> branch predict not taken
	beq	$25,.Lt_6_101.bpre        	# [20]  
#Block: 17 Pred: 61 15 Succ: 18 19 
.Lt_6_105:	# 0x1448
#<loop> Loop body line 326, nesting depth: 2, estimated iterations: 100
#<freq>
#<freq> BB:17 frequency = 9056.36426 (heuristic)
#<freq> BB:17 => BB:18 probability = 0.84000
#<freq> BB:17 => BB:19 probability = 0.16000
#<freq>
	.loc	2	97	0
	ldl	$24,528($sp)              	# [0]  gra_spill_temp_102
	.loc	2	67	0
	srl	$16,24,$25                	# [0]  
	.loc	2	97	0
	ldl	$23,512($sp)              	# [1]  gra_spill_temp_100
	.loc	2	67	0
	sll	$25,24,$25                	# [1]  
	.loc	2	97	0
	sll	$24,44,$27                	# [4]  
	.loc	2	67	0
	sll	$24,40,$24                	# [4]  
	.loc	2	97	0
	srl	$23,20,$0                 	# [5]  
	.loc	2	67	0
	srl	$24,40,$24                	# [5]  
	.loc	2	97	0
	sll	$0,20,$0                  	# [6]  
	srl	$27,44,$27                	# [6]  
	or	$27,$0,$27                 	# [7]  
	.loc	2	67	0
	or	$24,$25,$24                	# [7]  
	stw	$24,128($sp)              	# [8]  dma_get
	.loc	2	97	0
	stw	$27,132($sp)              	# [9]  dma_get+4
	.loc	1	329	0
	vldd	$25,128($sp)             	# [10]  dma_get
	ldl	$0,496($sp)               	# [11]  gra_spill_temp_98
	dma	$25,$18,$0                	# [15]  
	.loc	2	67	0
	srl	$24,24,$24                	# [15]  
	ldl	$25,464($sp)              	# [16]  gra_spill_temp_94
	.loc	2	97	0
	srl	$27,20,$27                	# [16]  
	sll	$27,20,$27                	# [17]  
	.loc	2	67	0
	sll	$24,24,$24                	# [17]  
	.loc	1	329	0
	ldw	$7,100($sp)               	# [18]  COUNT
	.loc	2	67	0
	sll	$25,40,$16                	# [20]  
	.loc	2	97	0
	sll	$25,44,$25                	# [21]  
	.loc	2	67	0
	srl	$16,40,$16                	# [21]  
	.loc	2	97	0
	srl	$25,44,$25                	# [22]  
	.loc	2	67	0
	or	$16,$24,$16                	# [22]  
	.loc	2	97	0
	or	$25,$27,$23                	# [23]  
	.loc	2	67	0
	stw	$16,128($sp)              	# [23]  dma_get
	.loc	2	97	0
	stw	$23,132($sp)              	# [24]  dma_get+4
	.loc	1	329	0
	addw	$7,1,$7                  	# [24]  
	.loc	1	330	0
	vldd	$3,128($sp)              	# [25]  dma_get
	.loc	1	329	0
	stw	$7,100($sp)               	# [26]  COUNT
	.loc	2	97	0
	stl	$23,512($sp)              	# [27]  gra_spill_temp_100
	.loc	1	330	0
	dma	$3,$17,$20                	# [29]  
	ldw	$2,100($sp)               	# [30]  COUNT
	ldl	$1,456($sp)               	# [31]  gra_spill_temp_93
	addw	$2,1,$2                  	# [34]  
	stw	$2,100($sp)               	# [35]  COUNT
#<bpre> branch predict not taken
	beq	$1,.Lt_6_107              	# [38]  
#Block: 18 Pred: 17 Succ: 20 
.L_BB18_backward_2D5_slave_kernel:	# 0x14ec
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:18 frequency = 7607.34619 (heuristic)
#<freq>
	.loc	1	331	0
	ldl	$25,488($sp)              	# [0]  gra_spill_temp_97
	fstd	$31,8032($25)            	# [4]  id:279 not_variable+0x0
#Block: 20 Pred: 18 19 Succ: 74 22 
.Lt_6_106:	# 0x14f4
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:20 frequency = 9056.36426 (heuristic)
#<freq> BB:20 => BB:74 probability = 0.75000
#<freq> BB:20 => BB:22 probability = 0.25000
#<freq>
	.loc	1	332	0
	ldw	$7,100($sp)               	# [36]  COUNT
	ldw	$27,96($sp)               	# [37]  reply
	cmpeq	$7,$27,$27              	# [41]  
#<bpre> branch predict not taken
	bne	$27,.Lt_6_108             	# [42]  
#Block: 74 Pred: 20 Succ: 76 
.L_BB74_backward_2D5_slave_kernel:	# 0x1504
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:74 frequency = 6792.27344 (heuristic)
#<freq>
#Block: 76 Pred: 21 74 Succ: 75 77 
.L_BB76_backward_2D5_slave_kernel:	# 0x1504
#<loop> Loop body line 332
#<loop> unrolled 3 times
#<freq>
#<freq> BB:76 frequency = 18868.09180 (heuristic)
#<freq> BB:76 => BB:75 probability = 0.12000
#<freq> BB:76 => BB:77 probability = 0.88000
#<freq>
	ldw	$0,96($sp)                	# [0]  reply
	cmpeq	$7,$0,$0                	# [4]  
#<bpre> branch predict not taken
	bne	$0,.L_BB75_backward_2D5_slave_kernel 	# [5]  
#Block: 77 Pred: 76 Succ: 75 21 
.L_BB77_backward_2D5_slave_kernel:	# 0x1510
#<loop> Part of loop body line 332, head labeled .L_BB76_backward_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:77 frequency = 16603.91992 (heuristic)
#<freq> BB:77 => BB:75 probability = 0.12000
#<freq> BB:77 => BB:21 probability = 0.88000
#<freq>
	ldw	$1,96($sp)                	# [5]  reply
	cmpeq	$7,$1,$1                	# [9]  
#<bpre> branch predict not taken
	bne	$1,.L_BB75_backward_2D5_slave_kernel 	# [10]  
#Block: 21 Pred: 77 Succ: 75 76 
.Lt_6_110:	# 0x151c
#<loop> Part of loop body line 332, head labeled .L_BB76_backward_2D5_slave_kernel
#<freq>
#<freq> BB:21 frequency = 14611.44922 (heuristic)
#<freq> BB:21 => BB:75 probability = 0.12000
#<freq> BB:21 => BB:76 probability = 0.88000
#<freq>
	ldw	$2,96($sp)                	# [10]  reply
	cmpeq	$7,$2,$2                	# [14]  
#<bpre> branch predict taken
	beq	$2,.L_BB76_backward_2D5_slave_kernel 	# [15]  
#Block: 75 Pred: 21 76 77 Succ: 22 
.L_BB75_backward_2D5_slave_kernel:	# 0x1528
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:75 frequency = 6792.27295 (heuristic)
#<freq>
#Block: 22 Pred: 75 20 Succ: 23 59 
.Lt_6_108:	# 0x1528
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:22 frequency = 9056.36426 (heuristic)
#<freq> BB:22 => BB:23 probability = 0.94030
#<freq> BB:22 => BB:59 probability = 0.05970
#<freq>
	ldl	$3,472($sp)               	# [0]  gra_spill_temp_95
	stl	$16,584($sp)              	# [1]  gra_spill_temp_109
#<bpre> branch predict not taken
	beq	$3,.Lt_6_112.bpre         	# [4]  
#Block: 23 Pred: 22 Succ: 25 
.L_BB23_backward_2D5_slave_kernel:	# 0x1534
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:23 frequency = 8515.68555 (heuristic)
#<freq>
	ldl	$11,568($sp)              	# [0]  gra_spill_temp_107
	vfmov	$31,$27                 	# [0]  
	ldl	$16,424($sp)              	# [1]  gra_spill_temp_89
	vfmov	$20,$23                 	# [1]  
	ldl	$25,488($sp)              	# [2]  gra_spill_temp_97
	ldi	$24,-17664($15)           	# [2]  LX.BLOCK
	cmplt	$11,$16,$11             	# [5]  
	ldl	$16,560($sp)              	# [5]  gra_spill_temp_106
	br	$31,.Lt_6_116              	# [6]  
#Block: 58 Pred: 42 46 Succ: 59 25 
	.align	4
.Lt_6_154:	# 0x1558
.Lt_6_40:	# 0x1558
#<loop> Part of loop body line 332, head labeled .Lt_6_116
#<freq>
#<freq> BB:58 frequency = 8515687.00000 (heuristic)
#<freq> BB:58 => BB:59 probability = 0.00100
#<freq> BB:58 => BB:25 probability = 0.99900
#<freq>
	.loc	1	363	0
	addw	$27,1,$27                	# [0]  
	ldi	$23,24($23)               	# [0]  
	cmpeq	$27,$8,$0               	# [1]  
	ldi	$24,8($24)                	# [1]  
	ldi	$25,-8($25)               	# [2]  
	addw	$16,1,$16                	# [2]  
#<bpre> branch predict not taken
	bne	$0,.Lt_6_112.bpre         	# [3]  
#Block: 25 Pred: 58 23 Succ: 26 37 
.Lt_6_116:	# 0x1574
#<loop> Loop body line 332, nesting depth: 3, estimated iterations: 1000
#<freq>
#<freq> BB:25 frequency = 8515686.00000 (heuristic)
#<freq> BB:25 => BB:26 probability = 0.75000
#<freq> BB:25 => BB:37 probability = 0.25000
#<freq>
	.loc	1	332	0
	cmplt	$16,$6,$1               	# [0]  
#<bpre> branch predict not taken
	bne	$1,.Lt_6_117              	# [1]  
#Block: 26 Pred: 25 36 Succ: 27 31 
	.align	4
.Lt_6_119:	# 0x157c
#<loop> Loop body line 332
#<freq>
#<freq> BB:26 frequency = 53223036.00000 (heuristic)
#<freq> BB:26 => BB:27 probability = 0.81116
#<freq> BB:26 => BB:31 probability = 0.18884
#<freq>
#<bpre> branch predict not taken
	beq	$22,.Lt_6_120             	# [0]  
#Block: 27 Pred: 26 Succ: 28 
.L_BB27_backward_2D5_slave_kernel:	# 0x1580
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:27 frequency = 43172332.00000 (heuristic)
#<freq>
	getc $3

	.loc	1	342	0
	addw	$5,1,$5                  	# [0]  
	ldi	$4,8($4)                  	# [0]  
	.loc	1	341	0
	vstd	$3,192($sp)              	# [1]  _v
	.loc	1	342	0
	cmple	$8,$5,$2                	# [1]  
	fldd	$7,192($sp)              	# [2]  _v
	.loc	1	344	0
	addw	$6,1,$6                  	# [2]  
	.loc	1	342	0
	stl	$2,552($sp)               	# [3]  gra_spill_temp_105
#Block: 28 Pred: 27 Succ: 29 31 
.L_BB28_backward_2D5_slave_kernel:	# 0x15a8
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:28 frequency = 43172332.00000 (heuristic)
#<freq> BB:28 => BB:29 probability = 0.50000
#<freq> BB:28 => BB:31 probability = 0.50000
#<freq>
	ldl	$0,552($sp)               	# [0]  gra_spill_temp_105
	fstd	$7,-8($4)                	# [1]  id:284 not_variable+0x0
#<bpre> branch predict unknown
	beq	$0,.Lt_6_120              	# [4]  
#Block: 29 Pred: 28 Succ: 31 
.L_BB29_backward_2D5_slave_kernel:	# 0x15b4
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:29 frequency = 21586166.00000 (heuristic)
#<freq>
	.loc	1	343	0
	mulw	$10,$9,$7                	# [0]  
	ldl	$3,576($sp)               	# [0]  gra_spill_temp_108
	subw	$3,$7,$3                 	# [5]  
	cmplt	$9,$3,$2                	# [6]  
	seleq	$2,$3,$9,$2             	# [7]  
	s8addl	$2,$31,$1              	# [8]  
	subw	$5,$2,$5                 	# [8]  
	subl	$4,$1,$4                 	# [9]  
#Block: 31 Pred: 26 28 29 Succ: 32 93 
.Lt_6_120:	# 0x15d4
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:31 frequency = 53223036.00000 (heuristic)
#<freq> BB:31 => BB:32 probability = 0.81116
#<freq> BB:31 => BB:93 probability = 0.18884
#<freq>
	.loc	1	344	0
#<bpre> branch predict not taken
	beq	$21,.L_BB93_backward_2D5_slave_kernel 	# [0]  
#Block: 32 Pred: 31 Succ: 33 
.L_BB32_backward_2D5_slave_kernel:	# 0x15d8
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:32 frequency = 43172332.00000 (heuristic)
#<freq>
	getr $2

	.loc	1	349	0
	addw	$5,1,$5                  	# [0]  
	.loc	1	351	0
	addw	$6,1,$6                  	# [0]  
	.loc	1	348	0
	vstd	$2,192($sp)              	# [1]  _v
	.loc	1	349	0
	cmple	$8,$5,$1                	# [1]  
	fldd	$0,192($sp)              	# [2]  _v
	ldi	$4,8($4)                  	# [2]  
	stl	$1,544($sp)               	# [3]  gra_spill_temp_104
	.loc	1	351	0
	cmplt	$16,$6,$7               	# [3]  
	.loc	1	349	0
	fstd	$0,-8($4)                	# [6]  id:285 not_variable+0x0
#Block: 33 Pred: 32 Succ: 34 36 
.L_BB33_backward_2D5_slave_kernel:	# 0x1608
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:33 frequency = 43172332.00000 (heuristic)
#<freq> BB:33 => BB:34 probability = 0.50000
#<freq> BB:33 => BB:36 probability = 0.50000
#<freq>
	ldl	$3,544($sp)               	# [0]  gra_spill_temp_104
#<bpre> branch predict unknown
	beq	$3,.Lt_6_124              	# [4]  
#Block: 34 Pred: 33 Succ: 36 
.L_BB34_backward_2D5_slave_kernel:	# 0x1610
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:34 frequency = 21586166.00000 (heuristic)
#<freq>
	.loc	1	350	0
	mulw	$10,$9,$3                	# [0]  
	ldl	$2,576($sp)               	# [0]  gra_spill_temp_108
	subw	$2,$3,$2                 	# [5]  
	cmplt	$9,$2,$1                	# [6]  
	seleq	$1,$2,$9,$1             	# [7]  
	s8addl	$1,$31,$0              	# [8]  
	subw	$5,$1,$5                 	# [8]  
	subl	$4,$0,$4                 	# [9]  
#Block: 36 Pred: 93 33 34 Succ: 37 26 
.Lt_6_124:	# 0x1630
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:36 frequency = 53223036.00000 (heuristic)
#<freq> BB:36 => BB:37 probability = 0.12000
#<freq> BB:36 => BB:26 probability = 0.88000
#<freq>
	.loc	1	351	0
#<bpre> branch predict taken
	beq	$7,.Lt_6_119              	# [0]  
#Block: 37 Pred: 36 25 Succ: 38 42 
.Lt_6_117:	# 0x1634
#<loop> Part of loop body line 332, head labeled .Lt_6_116
#<freq>
#<freq> BB:37 frequency = 8515686.00000 (heuristic)
#<freq> BB:37 => BB:38 probability = 0.84000
#<freq> BB:37 => BB:42 probability = 0.16000
#<freq>
	.loc	1	354	0
	fldd	$3,8($23)                	# [1]  id:289 LA+0x0
	fldd	$2,0($24)                	# [2]  id:288 not_variable+0x0
	fldd	$7,8024($25)             	# [3]  id:287 not_variable+0x0
	fldd	$1,8032($25)             	# [4]  id:291 not_variable+0x0
	fnmad	$2,$3,$7,$2             	# [7]  
	fldd	$0,0($23)                	# [8]  id:290 LA+0x0
	fldd	$7,16($23)               	# [9]  id:286 LA+0x0
	fnmad	$0,$1,$2,$0             	# [14]  
	fmuld	$7,$0,$7                	# [21]  
	fstd	$7,8024($25)             	# [28]  id:292 not_variable+0x0
#<bpre> branch predict not taken
	beq	$11,.Lt_6_133             	# [29]  
#Block: 38 Pred: 37 Succ: 39 40 
.L_BB38_backward_2D5_slave_kernel:	# 0x1660
#<loop> Part of loop body line 332, head labeled .Lt_6_116
#<freq>
#<freq> BB:38 frequency = 7153176.00000 (heuristic)
#<freq> BB:38 => BB:39 probability = 0.84000
#<freq> BB:38 => BB:40 probability = 0.16000
#<freq>
#<bpre> branch predict not taken
	beq	$12,.Lt_6_131             	# [0]  
#Block: 39 Pred: 38 Succ: 40 
.L_BB39_backward_2D5_slave_kernel:	# 0x1664
#<loop> Part of loop body line 332, head labeled .Lt_6_116
#<freq>
#<freq> BB:39 frequency = 6008668.00000 (heuristic)
#<freq>
	putc $7,$26

#Block: 40 Pred: 39 38 Succ: 41 42 
.Lt_6_131:	# 0x1670
#<loop> Part of loop body line 332, head labeled .Lt_6_116
#<freq>
#<freq> BB:40 frequency = 7153176.00000 (heuristic)
#<freq> BB:40 => BB:41 probability = 0.84000
#<freq> BB:40 => BB:42 probability = 0.16000
#<freq>
	.loc	1	360	0
#<bpre> branch predict not taken
	beq	$13,.Lt_6_133             	# [0]  
#Block: 41 Pred: 40 Succ: 42 
.L_BB41_backward_2D5_slave_kernel:	# 0x1674
#<loop> Part of loop body line 332, head labeled .Lt_6_116
#<freq>
#<freq> BB:41 frequency = 6008668.00000 (heuristic)
#<freq>
	putr $7,$14

#Block: 42 Pred: 37 40 41 52 56 Succ: 43 58 
.Lt_6_133:	# 0x1680
.Lt_6_129:	# 0x1680
.Lt_6_74:	# 0x1680
#<loop> Loop body line 363
#<freq>
#<freq> BB:42 frequency = 14646727.00000 (heuristic)
#<freq> BB:42 => BB:43 probability = 0.80000
#<freq> BB:42 => BB:58 probability = 0.20000
#<freq>
	.loc	1	363	0
	cmple	$28,$6,$0               	# [0]  
#<bpre> branch predict not taken
	bne	$0,.Lt_6_154.bpre         	# [1]  
#Block: 43 Pred: 42 Succ: 44 
.L_BB43_backward_2D5_slave_kernel:	# 0x1688
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:43 frequency = 11717382.00000 (heuristic)
#<freq>
	rcsr $7,0x34

#Block: 44 Pred: 43 Succ: 45 47 
.L_BB44_backward_2D5_slave_kernel:	# 0x1694
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:44 frequency = 11717382.00000 (heuristic)
#<freq> BB:44 => BB:45 probability = 0.84000
#<freq> BB:44 => BB:47 probability = 0.16000
#<freq>
	.loc	1	15	0
#<bpre> branch predict not taken
	beq	$7,.Lt_6_135              	# [0]  
#Block: 45 Pred: 44 Succ: 46 
.L_BB45_backward_2D5_slave_kernel:	# 0x1698
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:45 frequency = 9842601.00000 (heuristic)
#<freq>
	rcsr $7,0x35

#Block: 46 Pred: 45 Succ: 58 47 
.L_BB46_backward_2D5_slave_kernel:	# 0x16a4
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:46 frequency = 9842601.00000 (heuristic)
#<freq> BB:46 => BB:58 probability = 0.56757
#<freq> BB:46 => BB:47 probability = 0.43243
#<freq>
	.loc	1	363	0
#<bpre> branch predict taken
	bne	$7,.Lt_6_154              	# [0]  
#Block: 47 Pred: 44 46 Succ: 48 52 
.Lt_6_135:	# 0x16a8
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:47 frequency = 6131041.00000 (heuristic)
#<freq> BB:47 => BB:48 probability = 0.81116
#<freq> BB:47 => BB:52 probability = 0.18884
#<freq>
#<bpre> branch predict not taken
	beq	$22,.Lt_6_137             	# [0]  
#Block: 48 Pred: 47 Succ: 49 
.L_BB48_backward_2D5_slave_kernel:	# 0x16ac
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:48 frequency = 4973248.00000 (heuristic)
#<freq>
	getc $7

#Block: 49 Pred: 48 Succ: 50 51 
.L_BB49_backward_2D5_slave_kernel:	# 0x16b8
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:49 frequency = 4973248.00000 (heuristic)
#<freq> BB:49 => BB:50 probability = 0.50000
#<freq> BB:49 => BB:51 probability = 0.50000
#<freq>
	.loc	1	369	0
	addw	$5,1,$5                  	# [3]  
	ldi	$4,8($4)                  	# [3]  
	.loc	1	368	0
	vstd	$7,224($sp)              	# [4]  _v
	.loc	1	369	0
	cmple	$8,$5,$1                	# [4]  
	fldd	$2,224($sp)              	# [5]  _v
	fstd	$2,-8($4)                	# [9]  id:295 not_variable+0x0
#<bpre> branch predict unknown
	beq	$1,.Lt_6_139              	# [10]  
#Block: 50 Pred: 49 Succ: 51 
.L_BB50_backward_2D5_slave_kernel:	# 0x16d4
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:50 frequency = 2486624.00000 (heuristic)
#<freq>
	.loc	1	370	0
	mulw	$10,$9,$1                	# [0]  
	ldl	$0,576($sp)               	# [0]  gra_spill_temp_108
	subw	$0,$1,$0                 	# [5]  
	cmplt	$9,$0,$7                	# [6]  
	seleq	$7,$0,$9,$7             	# [7]  
	s8addl	$7,$31,$3              	# [8]  
	subw	$5,$7,$5                 	# [8]  
	subl	$4,$3,$4                 	# [9]  
#Block: 51 Pred: 50 49 Succ: 52 
.Lt_6_139:	# 0x16f4
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:51 frequency = 4973248.00000 (heuristic)
#<freq>
	.loc	1	371	0
	addw	$6,1,$6                  	# [0]  
#Block: 52 Pred: 51 47 Succ: 53 42 
.Lt_6_137:	# 0x16f8
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:52 frequency = 6131041.00000 (heuristic)
#<freq> BB:52 => BB:53 probability = 0.12000
#<freq> BB:52 => BB:42 probability = 0.88000
#<freq>
#<bpre> branch predict taken
	beq	$21,.Lt_6_133             	# [0]  
#Block: 53 Pred: 52 Succ: 54 
.L_BB53_backward_2D5_slave_kernel:	# 0x16fc
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:53 frequency = 735724.93750 (heuristic)
#<freq>
	getr $7

#Block: 54 Pred: 53 Succ: 55 56 
.L_BB54_backward_2D5_slave_kernel:	# 0x1708
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:54 frequency = 735724.93750 (heuristic)
#<freq> BB:54 => BB:55 probability = 0.50000
#<freq> BB:54 => BB:56 probability = 0.50000
#<freq>
	.loc	1	376	0
	addw	$5,1,$5                  	# [0]  
	ldi	$4,8($4)                  	# [0]  
	.loc	1	375	0
	vstd	$7,224($sp)              	# [1]  _v
	.loc	1	376	0
	cmple	$8,$5,$2                	# [1]  
	fldd	$3,224($sp)              	# [2]  _v
	fstd	$3,-8($4)                	# [6]  id:296 not_variable+0x0
#<bpre> branch predict unknown
	beq	$2,.Lt_6_143              	# [7]  
#Block: 55 Pred: 54 Succ: 56 
.L_BB55_backward_2D5_slave_kernel:	# 0x1724
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:55 frequency = 367862.46875 (heuristic)
#<freq>
	.loc	1	377	0
	mulw	$10,$9,$2                	# [0]  
	ldl	$1,576($sp)               	# [0]  gra_spill_temp_108
	subw	$1,$2,$1                 	# [5]  
	cmplt	$9,$1,$0                	# [6]  
	seleq	$0,$1,$9,$0             	# [7]  
	s8addl	$0,$31,$7              	# [8]  
	subw	$5,$0,$5                 	# [8]  
	subl	$4,$7,$4                 	# [9]  
#Block: 56 Pred: 55 54 Succ: 42 
.Lt_6_143:	# 0x1744
#<loop> Part of loop body line 363, head labeled .Lt_6_133
#<freq>
#<freq> BB:56 frequency = 735724.93750 (heuristic)
#<freq>
	.loc	1	378	0
	addw	$6,1,$6                  	# [7]  
	br	$31,.Lt_6_133              	# [15]  
#Block: 19 Pred: 17 Succ: 20 
.Lt_6_107:	# 0x174c
#<loop> Part of loop body line 326, head labeled .Lt_6_105
#<freq>
#<freq> BB:19 frequency = 1449.01831 (heuristic)
#<freq>
	.loc	1	332	0
	ldl	$7,536($sp)               	# [0]  gra_spill_temp_103
	ldl	$3,488($sp)               	# [1]  gra_spill_temp_97
	fldd	$7,0($7)                 	# [4]  id:280
	fstd	$7,8032($3)              	# [8]  id:281 not_variable+0x0
	br	$31,.Lt_6_106              	# [9]  
#Block: 6 Pred: 4 Succ: 7 
.Lt_6_92:	# 0x1760
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:6 frequency = 15.61464 (heuristic)
#<freq>
	.loc	1	324	0
	ldl	$28,312($sp)              	# [0]  gra_spill_temp_75
	mulw	$28,$8,$28               	# [4]  
	br	$31,.Lt_6_91               	# [4]  
#Block: 13 Pred: 11 Succ: 14 
.Lt_6_100:	# 0x176c
#<loop> Part of loop body line 73, head labeled .Lt_6_90
#<freq>
#<freq> BB:13 frequency = 15.61464 (heuristic)
#<freq>
	.loc	1	326	0
	vfmov	$31,$6                  	# [13]  
	br	$31,.Lt_6_99               	# [13]  
#Block: 63 Pred: 62 2 Succ: 
.Lt_6_86:	# 0x1774
#<freq>
#<freq> BB:63 frequency = 1.00001 (heuristic)
#<freq>
	.loc	1	389	0
# 385  		}
# 386  #undef HALO
# 387  #undef MLEN
# 388  	}
# 389  	return 0;
	ldl	$1,280($sp)               	# [0]  gra_spill_temp_71
	.loc	1	382	0
	vfmov	$31,$0                  	# [0]  
	.loc	1	389	0
	ldl	$26,0($sp)                	# [1]  return_address
	ldl	$14,256($sp)              	# [2]  gra_spill_temp_68
	ldl	$13,272($sp)              	# [3]  gra_spill_temp_70
	ldl	$12,296($sp)              	# [4]  gra_spill_temp_73
	ldl	$11,264($sp)              	# [5]  gra_spill_temp_69
	ldl	$10,288($sp)              	# [6]  gra_spill_temp_72
	ldl	$9,304($sp)               	# [7]  gra_spill_temp_74
	vfmov	$15,$sp                 	# [7]  
	vfmov	$1,$15                  	# [8]  
	ret	$31,($26),1               	# [8]  
#Block: 93 Pred: 31 Succ: 36 
	.align	4
.L_BB93_backward_2D5_slave_kernel:	# 0x17a4
#<loop> Part of loop body line 332, head labeled .Lt_6_119
#<freq>
#<freq> BB:93 frequency = 10050702.00000 (heuristic)
#<freq>
	.loc	1	351	0
	cmplt	$16,$6,$7               	# [7]  
	.loc	1	389	0
	br	$31,.Lt_6_124              	# [15]  
.Lt_6_101.bpre:
	br .Lt_6_101
.Lt_6_112.bpre:
	br .Lt_6_112
.Lt_6_154.bpre:
	br .Lt_6_154
.L_CC_backward_2D5_slave_kernel:
#PU cycle count: 1267448064.000000
	.end	backward_2D5_slave_kernel
	.section .text1
	.align 4

	# Program Unit: fact_2D5_slave_kernel
	.align 4
	.ent	fact_2D5_slave_kernel#
	.globl	fact_2D5_slave_kernel
fact_2D5_slave_kernel:	# 0x1740
	# ids = 64
	# reply = 96
	# COUNT = 100
	# dma_get = 128
	# dma_put = 160
	# LUB = -24256
	# LA = -44256
	# _v = 192
	# LLB = -52256
	# _v = 224
	# _v = 256
	# return_address = 0
	# reserved_spill_temp_110 = 32
	# gra_spill_temp_111 = 288
	# gra_spill_temp_112 = 296
	# gra_spill_temp_113 = 304
	# gra_spill_temp_114 = 312
	# gra_spill_temp_115 = 320
	# gra_spill_temp_116 = 328
	# gra_spill_temp_117 = 336
	# gra_spill_temp_118 = 344
	# gra_spill_temp_119 = 352
	# gra_spill_temp_120 = 360
	# gra_spill_temp_121 = 368
	# gra_spill_temp_122 = 376
	# gra_spill_temp_123 = 384
	# gra_spill_temp_124 = 392
	# gra_spill_temp_125 = 400
	# gra_spill_temp_126 = 408
	# gra_spill_temp_127 = 416
	# gra_spill_temp_128 = 424
	# gra_spill_temp_129 = 432
	# gra_spill_temp_130 = 440
	# gra_spill_temp_131 = 448
	# gra_spill_temp_132 = 456
	# gra_spill_temp_133 = 464
	# gra_spill_temp_134 = 472
	# gra_spill_temp_135 = 480
	# gra_spill_temp_136 = 488
	# gra_spill_temp_137 = 496
	# gra_spill_temp_138 = 504
	# gra_spill_temp_139 = 512
	# gra_spill_temp_140 = 520
	# gra_spill_temp_141 = 528
	# gra_spill_temp_142 = 536
	# gra_spill_temp_143 = 544
	# gra_spill_temp_144 = 552
	# gra_spill_temp_145 = 560
	# gra_spill_temp_146 = 568
	# gra_spill_temp_147 = 576
	# gra_spill_temp_148 = 584
	# gra_spill_temp_149 = 592
	# gra_spill_temp_150 = 600
	# gra_spill_temp_151 = 608
	# gra_spill_temp_152 = 616
	# gra_spill_temp_153 = 624
	# gra_spill_temp_154 = 632
	# gra_spill_temp_155 = 640
	# gra_spill_temp_156 = 648
	# gra_spill_temp_157 = 656
	# gra_spill_temp_158 = 664
	# gra_spill_temp_159 = 672
	# gra_spill_temp_160 = 680
#Block: 1 Pred: Succ: 2 
	.loc	1	394	0
# 390  }
# 391  
# 392  
# 393  int fact_2D5_slave_kernel(double *LB, double *UB, double *A, int M, int N, int L)
# 394  {
.L_BB1_fact_2D5_slave_kernel:	# 0x1740
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq>
	ldih	$gp,0($27)               	!gpdisp!7	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!7	# [1]  0
	
$ng..fact_2D5_slave_kernel:
	vfmov	$15,$0                  	# [2]  
	ldi	$1,-12576($31)            	# [2]  
	ldih	$1,1($1)                 	# [3]  
	subl	$sp,$1,$sp               	# [4]  
	addl	$sp,$1,$15               	# [5]  
	stl	$9,320($sp)               	# [5]  gra_spill_temp_115
	stl	$10,304($sp)              	# [6]  gra_spill_temp_113
#	.vframe $15
	stl	$11,296($sp)              	# [7]  gra_spill_temp_112
#	.spillsp $9, 0
	stl	$12,312($sp)              	# [8]  gra_spill_temp_114
#	.spillsp $10, 0
	stl	$0,328($sp)               	# [9]  gra_spill_temp_116
#	.spillsp $11, 0
	stl	$13,288($sp)              	# [10]  gra_spill_temp_111
#	.spillsp $12, 0
	stl	$14,336($sp)              	# [11]  gra_spill_temp_117
#	.spillsp $15, 0
	stl	$20,680($sp)              	# [12]  gra_spill_temp_160
#	.spillsp $13, 0
	stl	$19,536($sp)              	# [13]  gra_spill_temp_142
#	.spillsp $14, 0
	stl	$18,400($sp)              	# [14]  gra_spill_temp_125
	stl	$17,408($sp)              	# [15]  gra_spill_temp_126
	stl	$16,392($sp)              	# [16]  gra_spill_temp_124
	.loc	1	400	0
# 396  	int gr = -1, gc = -1, pr = -1, pc = -1;
# 397  	//Init id information
# 398  	{
# 399  		int ids[8];
# 400  		Cal_ID(ids);
	ldi	$16,64($sp)               	# [16]  ids
	.loc	1	394	0
	stl	$26,0($sp)                	# [17]  return_address
	.loc	1	400	0
	.prologue
	bsr	$26,$ng..slave_Cal_ID     	# [18]  slave_Cal_ID
#Block: 2 Pred: 1 Succ: 3 63 
.L_BB2_fact_2D5_slave_kernel:	# 0x17a4
#<freq>
#<freq> BB:2 frequency = 1.00000 (heuristic)
#<freq> BB:2 => BB:3 probability = 0.97590
#<freq> BB:2 => BB:63 probability = 0.02410
#<freq>
	.loc	2	79	0
	ldw	$8,132($sp)               	# [0]  dma_get+4
	ornot	$31,$31,$7              	# [0]  
	ldw	$2,164($sp)               	# [1]  dma_put+4
	srl	$7,60,$7                  	# [1]  
	mov	1,$3                      	# [2]  
	sll	$7,24,$7                  	# [2]  
	sll	$3,24,$3                  	# [3]  
	.loc	1	401	0
# 401  		id = ids[0];
	ldw	$16,64($sp)               	# [3]  ids
	.loc	2	79	0
	and	$3,$7,$3                  	# [4]  
	andnot	$8,$7,$8               	# [4]  
	.loc	2	73	0
	ldl	$1,680($sp)               	# [5]  gra_spill_temp_160
	.loc	2	85	0
	ldi	$6,-1($31)                	# [5]  
	ldih	$6,4096($6)              	# [6]  
	.loc	2	79	0
	or	$3,$8,$3                   	# [6]  
	andnot	$2,$7,$2               	# [7]  
	.loc	2	85	0
	and	$3,$6,$3                  	# [7]  
	and	$2,$6,$2                  	# [8]  
	.loc	1	401	0
	ldi	$6,96($sp)                	# [8]  reply
	.loc	1	415	0
# 411  #define MLEN 500
# 412  #define RNZ 5
# 413  #define LNZ 2
# 414  #define UNZ 3
# 415  		volatile int reply = 0;
	stw	$31,96($sp)               	# [9]  reply
	.loc	1	402	0
	ldw	$19,68($sp)               	# [10]  ids+4
	.loc	1	403	0
	ldw	$5,72($sp)                	# [11]  ids+8
	.loc	1	404	0
	ldw	$18,76($sp)               	# [12]  ids+12
	.loc	1	405	0
	ldw	$4,80($sp)                	# [13]  ids+16
	.loc	1	416	0
# 416  		volatile int COUNT = 0;
	stw	$31,100($sp)              	# [14]  COUNT
	.loc	2	73	0
	sth	$6,136($sp)               	# [15]  dma_get+8
	sth	$6,168($sp)               	# [16]  dma_put+8
	.loc	2	85	0
	stl	$2,616($sp)               	# [17]  gra_spill_temp_152
	stw	$2,164($sp)               	# [18]  dma_put+4
	stl	$3,624($sp)               	# [19]  gra_spill_temp_153
	stw	$3,132($sp)               	# [20]  dma_get+4
	.loc	1	401	0
	stl	$16,416($sp)              	# [21]  gra_spill_temp_127
	.loc	2	103	0
	stw	$31,140($sp)              	# [22]  dma_get+12
	stw	$31,172($sp)              	# [23]  dma_put+12
	.loc	2	73	0
#<bpre> branch predict not taken
	ble	$1,.Lt_7_86               	# [24]  
#Block: 3 Pred: 2 Succ: 4 
.L_BB3_fact_2D5_slave_kernel:	# 0x182c
#<freq>
#<freq> BB:3 frequency = 0.97590 (heuristic)
#<freq>
	ldl	$16,680($sp)              	# [0]  gra_spill_temp_160
	ldi	$1,28312($31)             	# [0]  
	ldih	$1,-31982($1)            	# [1]  
	vfmov	$31,$11                 	# [1]  
	sll	$1,32,$1                  	# [2]  
	ldi	$20,-24256($15)           	# [2]  LUB
	subw	$16,1,$22                	# [4]  
	subw	$31,$22,$0               	# [5]  
	selge	$22,$22,$0,$0           	# [6]  
	umulh	$0,$1,$0                	# [7]  
	srl	$0,8,$0                   	# [12]  
	subw	$31,$0,$1                	# [13]  
	selge	$22,$0,$1,$0            	# [14]  
	addw	$0,1,$0                  	# [15]  
	divw	$22,$0,$12
	ldl	$17,536($sp)              	# [16]  gra_spill_temp_142
	addw	$12,3,$21                	# [16]  
	selge	$12,$12,$21,$12         	# [17]  
	ldl	$21,416($sp)              	# [17]  gra_spill_temp_127
	sra	$12,2,$12                 	# [18]  
	sll	$16,6,$8                  	# [18]  
	s4addl	$12,$31,$12            	# [19]  
	sextw	$8,$8                   	# [19]  
	addw	$17,63,$24               	# [20]  
	mulw	$17,$16,$27              	# [20]  
	selge	$17,$17,$24,$24         	# [21]  
	sextw	$12,$12                 	# [21]  
	sra	$24,6,$24                 	# [22]  
	mulw	$16,$21,$23              	# [22]  
	sll	$24,6,$25                 	# [23]  
	addw	$12,4,$12                	# [23]  
	sextw	$25,$25                 	# [24]  
	s4subl	$8,$8,$10              	# [24]  
	subw	$17,$25,$25              	# [25]  
	ldw	$2,160($sp)               	# [25]  dma_put
	cmplt	$21,$25,$25             	# [26]  
	ldw	$1,128($sp)               	# [26]  dma_get
	stl	$25,432($sp)              	# [27]  gra_spill_temp_129
	vfmov	$24,$25                 	# [27]  
	s4addl	$23,$23,$28            	# [28]  
	sextw	$10,$10                 	# [28]  
	sextw	$28,$28                 	# [29]  
	s4addl	$12,$12,$22            	# [29]  
	stl	$28,472($sp)              	# [30]  gra_spill_temp_134
	s4addl	$8,$8,$9               	# [30]  
	ldl	$28,408($sp)              	# [31]  gra_spill_temp_126
	addl	$8,$8,$8                 	# [31]  
	stl	$27,368($sp)              	# [32]  gra_spill_temp_121
	s4subl	$27,$27,$27            	# [32]  
	sextw	$27,$27                 	# [33]  
	sextw	$8,$8                   	# [33]  
	sextw	$9,$9                   	# [34]  
	sextw	$22,$22                 	# [34]  
	s8addl	$10,$31,$10            	# [35]  
	subw	$17,$21,$0               	# [35]  
	addw	$0,63,$0                 	# [36]  
	stl	$10,528($sp)              	# [36]  gra_spill_temp_141
	subl	$31,$10,$10              	# [37]  
	stl	$22,424($sp)              	# [37]  gra_spill_temp_128
	cmpeq	$21,0,$22               	# [38]  
	cmplt	$21,$17,$21             	# [38]  
	subw	$17,1,$17                	# [39]  
	s8addl	$9,$31,$9              	# [39]  
	s8addl	$8,$31,$8              	# [40]  
	s8addl	$27,$28,$27            	# [40]  
	addw	$24,1,$24                	# [41]  
	ldi	$20,12096($20)            	# [41]  
	stl	$20,504($sp)              	# [42]  gra_spill_temp_138
	cmple	$31,$18,$20             	# [42]  
	stl	$24,352($sp)              	# [43]  gra_spill_temp_119
	stl	$27,384($sp)              	# [44]  gra_spill_temp_123
	stl	$8,520($sp)               	# [45]  gra_spill_temp_140
	stl	$9,512($sp)               	# [46]  gra_spill_temp_139
	cmple	$31,$5,$9               	# [46]  
	stl	$17,488($sp)              	# [47]  gra_spill_temp_136
	cmple	$31,$19,$17             	# [47]  
	stl	$21,448($sp)              	# [48]  gra_spill_temp_131
	stl	$22,440($sp)              	# [49]  gra_spill_temp_130
	stl	$10,496($sp)              	# [50]  gra_spill_temp_137
	cmple	$31,$4,$10              	# [50]  
	stl	$0,376($sp)               	# [51]  gra_spill_temp_122
	stl	$25,344($sp)              	# [52]  gra_spill_temp_118
	stl	$1,600($sp)               	# [53]  gra_spill_temp_150
	stl	$2,608($sp)               	# [54]  gra_spill_temp_151
	stl	$23,464($sp)              	# [55]  gra_spill_temp_133
	stl	$16,480($sp)              	# [56]  gra_spill_temp_135
	stl	$31,456($sp)              	# [57]  gra_spill_temp_132
	br	$31,.Lt_7_90               	# [58]  
#Block: 62 Pred: 61 14 Succ: 63 4 
	.align	4
.Lt_7_101:	# 0x1994
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:62 frequency = 97.59151 (heuristic)
#<freq> BB:62 => BB:63 probability = 0.01000
#<freq> BB:62 => BB:4 probability = 0.99000
#<freq>
	.loc	1	544	0
# 540  						}
# 541  					}
# 542  				}
# 543  				WXL_DMA_NEW(dma_put, LB + OFFSET(i,k,LNZ),                     &LLB[0][0][0], sizeof(double)*LEN*LNZ, COUNT);
# 544  				WXL_DMA_NEW(dma_put, UB + M*N*UNZ - OFFSET(i,k,UNZ) - LEN*UNZ, &LUB[1][0][0], sizeof(double)*LEN*UNZ, COUNT);
	ldl	$4,480($sp)               	# [0]  gra_spill_temp_135
	addw	$11,1,$11                	# [0]  
	ldl	$2,456($sp)               	# [1]  gra_spill_temp_132
	subw	$4,$12,$4                	# [4]  
	ldl	$3,680($sp)               	# [5]  gra_spill_temp_160
	addw	$2,$12,$2                	# [8]  
	stl	$2,456($sp)               	# [9]  gra_spill_temp_132
	cmplt	$2,$3,$2                	# [12]  
	ldl	$3,464($sp)               	# [13]  gra_spill_temp_133
	stl	$4,480($sp)               	# [14]  gra_spill_temp_135
	addw	$3,$12,$3                	# [17]  
	ldl	$4,472($sp)               	# [18]  gra_spill_temp_134
	ldl	$5,424($sp)               	# [19]  gra_spill_temp_128
	stl	$3,464($sp)               	# [20]  gra_spill_temp_133
	addw	$4,$5,$4                 	# [23]  
	stl	$4,472($sp)               	# [24]  gra_spill_temp_134
#<bpre> branch predict not taken
	beq	$2,.Lt_7_86               	# [25]  
#Block: 4 Pred: 3 62 Succ: 5 6 
.Lt_7_90:	# 0x19d8
#<loop> Loop body line 73, nesting depth: 1, estimated iterations: 100
#<freq>
#<freq> BB:4 frequency = 97.59151 (heuristic)
#<freq> BB:4 => BB:5 probability = 0.84000
#<freq> BB:4 => BB:6 probability = 0.16000
#<freq>
	.loc	2	73	0
	ldl	$16,480($sp)              	# [0]  gra_spill_temp_135
	ldl	$5,432($sp)               	# [1]  gra_spill_temp_129
	cmplt	$16,$12,$8              	# [4]  
	seleq	$8,$12,$16,$8           	# [5]  
#<bpre> branch predict not taken
	beq	$5,.Lt_7_92               	# [8]  
#Block: 5 Pred: 4 Succ: 7 
.L_BB5_fact_2D5_slave_kernel:	# 0x19ec
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:5 frequency = 81.97688 (heuristic)
#<freq>
	.loc	1	435	0
	ldl	$14,352($sp)              	# [0]  gra_spill_temp_119
	mulw	$14,$8,$14               	# [4]  
#Block: 7 Pred: 5 6 Succ: 8 11 
.Lt_7_91:	# 0x19f4
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:7 frequency = 97.59151 (heuristic)
#<freq> BB:7 => BB:8 probability = 0.71053
#<freq> BB:7 => BB:11 probability = 0.28947
#<freq>
	ldi	$16,-3($31)               	# [5]  
	cmplt	$8,$16,$16              	# [12]  
#<bpre> branch predict not taken
	bne	$16,.Lt_7_93              	# [13]  
#Block: 8 Pred: 7 Succ: 64 
.L_BB8_fact_2D5_slave_kernel:	# 0x1a00
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:8 frequency = 69.34134 (heuristic)
#<freq>
	vfmov	$31,$4                  	# [0]  
	ldi	$5,-24256($15)            	# [0]  LUB
	addw	$8,4,$6                  	# [1]  
#Block: 64 Pred: 8 Succ: 68 67 
.L_BB64_fact_2D5_slave_kernel:	# 0x1a0c
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:64 frequency = 69.34134 (heuristic)
#<freq> BB:64 => BB:68 probability = 0.75000
#<freq> BB:64 => BB:67 probability = 0.25000
#<freq>
	and	$6,3,$7                   	# [0]  
#<bpre> branch predict not taken
	beq	$7,.L_BB67_fact_2D5_slave_kernel 	# [1]  
#Block: 68 Pred: 64 Succ: 67 69 
.L_BB68_fact_2D5_slave_kernel:	# 0x1a14
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<loop> Unrolling remainder loop (at most 3 iterations)
#<freq>
#<freq> BB:68 frequency = 52.00600 (heuristic)
#<freq> BB:68 => BB:67 probability = 0.33333
#<freq> BB:68 => BB:69 probability = 0.66667
#<freq>
	.loc	1	438	0
	ldi	$16,1023($31)             	# [0]  
	subw	$7,1,$7                  	# [0]  
	sll	$16,52,$16                	# [1]  
	ldi	$5,24($5)                 	# [1]  
	fstd	$16,-24240($15)          	# [2]  LUB+16
	addw	$31,1,$4                 	# [2]  
	fstd	$31,-24248($15)          	# [3]  LUB+8
	fstd	$31,-24256($15)          	# [4]  LUB
#<bpre> branch predict not taken
	beq	$7,.L_BB67_fact_2D5_slave_kernel 	# [5]  
#Block: 69 Pred: 68 Succ: 67 70 
.L_BB69_fact_2D5_slave_kernel:	# 0x1a38
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:69 frequency = 34.67067 (heuristic)
#<freq> BB:69 => BB:67 probability = 0.50000
#<freq> BB:69 => BB:70 probability = 0.50000
#<freq>
	ldi	$16,1023($31)             	# [0]  
	ldi	$5,-24256($15)            	# [0]  LUB
	sll	$16,52,$16                	# [1]  
	ldi	$5,48($5)                 	# [1]  
	fstd	$16,-24216($15)          	# [2]  LUB+40
	subw	$7,1,$21                 	# [2]  
	mov	2,$4                      	# [3]  
	fstd	$31,-24224($15)          	# [3]  LUB+32
	fstd	$31,-24232($15)          	# [4]  LUB+24
#<bpre> branch predict unknown
	beq	$21,.L_BB67_fact_2D5_slave_kernel 	# [5]  
#Block: 70 Pred: 69 Succ: 67 
.L_BB70_fact_2D5_slave_kernel:	# 0x1a60
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:70 frequency = 17.33533 (heuristic)
#<freq>
	ldi	$5,-24256($15)            	# [0]  LUB
	mov	3,$4                      	# [0]  
	ldi	$5,72($5)                 	# [1]  
	fstd	$16,-24192($15)          	# [1]  LUB+64
	fstd	$31,-24200($15)          	# [2]  LUB+56
	fstd	$31,-24208($15)          	# [3]  LUB+48
#Block: 67 Pred: 64 68 69 70 Succ: 72 71 
.L_BB67_fact_2D5_slave_kernel:	# 0x1a78
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:67 frequency = 69.34134 (heuristic)
#<freq> BB:67 => BB:72 probability = 0.99206
#<freq> BB:67 => BB:71 probability = 0.00794
#<freq>
	sra	$6,2,$7                   	# [0]  
#<bpre> branch predict not taken
	beq	$7,.L_BB71_fact_2D5_slave_kernel 	# [1]  
#Block: 72 Pred: 67 Succ: 66 
.L_BB72_fact_2D5_slave_kernel:	# 0x1a80
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:72 frequency = 68.79101 (heuristic)
#<freq>
#Block: 66 Pred: 66 72 Succ: 66 73 
	.align	4
.L_BB66_fact_2D5_slave_kernel:	# 0x1a80
#<loop> Loop body line 435, nesting depth: 2, estimated iterations: 126
#<loop> unrolled 4 times
#<freq>
#<freq> BB:66 frequency = 6535.42188 (heuristic)
#<freq> BB:66 => BB:66 probability = 0.99206
#<freq> BB:66 => BB:73 probability = 0.00794
#<freq>
	ldi	$21,1023($31)             	# [0]  
	addw	$4,4,$4                  	# [0]  
	sll	$21,52,$21                	# [1]  
	cmpeq	$4,$6,$16               	# [1]  
	fstd	$21,88($5)               	# [2]  id:368 LUB+0x0
	fstd	$21,64($5)               	# [3]  id:368 LUB+0x0
	fstd	$21,40($5)               	# [4]  id:368 LUB+0x0
	fstd	$21,16($5)               	# [5]  id:368 LUB+0x0
	fstd	$31,0($5)                	# [6]  id:366 LUB+0x0
	fstd	$31,8($5)                	# [7]  id:367 LUB+0x0
	fstd	$31,24($5)               	# [8]  id:366 LUB+0x0
	fstd	$31,32($5)               	# [9]  id:367 LUB+0x0
	fstd	$31,48($5)               	# [10]  id:366 LUB+0x0
	fstd	$31,56($5)               	# [11]  id:367 LUB+0x0
	fstd	$31,72($5)               	# [12]  id:366 LUB+0x0
	fstd	$31,80($5)               	# [13]  id:367 LUB+0x0
	ldi	$5,96($5)                 	# [13]  
#<bpre> branch predict taken
	beq	$16,.L_BB66_fact_2D5_slave_kernel 	# [14]  
#Block: 73 Pred: 66 Succ: 71 
.L_BB73_fact_2D5_slave_kernel:	# 0x1ac8
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:73 frequency = 51.86843 (heuristic)
#<freq>
#Block: 71 Pred: 67 73 Succ: 65 
.L_BB71_fact_2D5_slave_kernel:	# 0x1ac8
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:71 frequency = 0.00000 (heuristic)
#<freq>
#Block: 65 Pred: 71 Succ: 11 
.L_BB65_fact_2D5_slave_kernel:	# 0x1ac8
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:65 frequency = 69.34135 (heuristic)
#<freq>
#Block: 11 Pred: 65 7 Succ: 12 13 
.Lt_7_93:	# 0x1ac8
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:11 frequency = 97.59151 (heuristic)
#<freq> BB:11 => BB:12 probability = 0.84000
#<freq> BB:11 => BB:13 probability = 0.16000
#<freq>
	ldl	$22,440($sp)              	# [0]  gra_spill_temp_130
#<bpre> branch predict not taken
	beq	$22,.Lt_7_100             	# [4]  
#Block: 12 Pred: 11 Succ: 14 
.L_BB12_fact_2D5_slave_kernel:	# 0x1ad0
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:12 frequency = 81.97688 (heuristic)
#<freq>
	.loc	1	440	0
	vfmov	$8,$6                   	# [0]  
#Block: 14 Pred: 12 13 Succ: 15 62 
.Lt_7_99:	# 0x1ad4
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:14 frequency = 97.59151 (heuristic)
#<freq> BB:14 => BB:15 probability = 0.92799
#<freq> BB:14 => BB:62 probability = 0.07201
#<freq>
	ldl	$23,448($sp)              	# [0]  gra_spill_temp_131
#<bpre> branch predict not taken
	beq	$23,.Lt_7_101.bpre        	# [4]  
#Block: 15 Pred: 14 Succ: 17 
.L_BB15_fact_2D5_slave_kernel:	# 0x1adc
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:15 frequency = 90.56364 (heuristic)
#<freq>
	ldl	$2,464($sp)               	# [0]  gra_spill_temp_133
	sll	$8,4,$25                  	# [0]  
	ldl	$4,384($sp)               	# [1]  gra_spill_temp_123
	sextw	$25,$25                 	# [1]  
	ldl	$16,368($sp)              	# [2]  gra_spill_temp_121
	mov	1,$24                     	# [2]  
	ldl	$7,376($sp)               	# [3]  gra_spill_temp_122
	s4subl	$8,$8,$0               	# [3]  
	s4subl	$2,$2,$21              	# [4]  
	sextw	$0,$5                   	# [4]  
	sextw	$21,$21                 	# [5]  
	cmple	$24,$8,$24              	# [5]  
	s8addl	$21,$31,$21            	# [6]  
	stl	$25,544($sp)              	# [6]  gra_spill_temp_143
	subl	$4,$21,$4                	# [7]  
	ldl	$21,408($sp)              	# [7]  gra_spill_temp_126
	ldl	$25,456($sp)              	# [8]  gra_spill_temp_132
	s8addl	$5,$31,$5              	# [8]  
	ldl	$27,472($sp)              	# [9]  gra_spill_temp_134
	subw	$16,$2,$16               	# [9]  
	ldl	$28,400($sp)              	# [10]  gra_spill_temp_125
	s4subl	$16,$16,$16            	# [10]  
	ldl	$3,392($sp)               	# [11]  gra_spill_temp_124
	addl	$2,$2,$2                 	# [11]  
	stl	$24,584($sp)              	# [12]  gra_spill_temp_148
	subl	$4,$5,$4                 	# [12]  
	ldl	$24,416($sp)              	# [13]  gra_spill_temp_127
	addw	$7,63,$22                	# [13]  
	s4addl	$8,$8,$1               	# [14]  
	selge	$7,$7,$22,$7            	# [14]  
	s8addl	$1,$31,$1              	# [15]  
	s8addl	$0,$31,$22             	# [15]  
	stl	$4,656($sp)               	# [16]  gra_spill_temp_157
	ldi	$4,-24256($15)            	# [16]  LUB
	sextw	$2,$2                   	# [17]  
	sextw	$16,$16                 	# [17]  
	s8addl	$16,$21,$16            	# [18]  
	s8addl	$2,$3,$2               	# [18]  
	s8addl	$0,$4,$0               	# [19]  
	sextw	$22,$22                 	# [19]  
	sextw	$1,$1                   	# [20]  
	sra	$7,6,$7                   	# [20]  
	s8addl	$27,$28,$27            	# [21]  
	cmpeq	$25,0,$25               	# [21]  
	selge	$8,$8,$31,$23           	# [22]  
	stl	$25,576($sp)              	# [22]  gra_spill_temp_147
	stl	$23,560($sp)              	# [23]  gra_spill_temp_145
	vfmov	$31,$5                  	# [23]  
	stl	$27,672($sp)              	# [24]  gra_spill_temp_159
	stl	$7,360($sp)               	# [25]  gra_spill_temp_120
	stl	$1,552($sp)               	# [26]  gra_spill_temp_144
	stl	$22,568($sp)              	# [27]  gra_spill_temp_146
	stl	$0,592($sp)               	# [28]  gra_spill_temp_149
	stl	$2,664($sp)               	# [29]  gra_spill_temp_158
	stl	$16,632($sp)              	# [30]  gra_spill_temp_154
	stl	$24,640($sp)              	# [31]  gra_spill_temp_155
	stl	$31,648($sp)              	# [32]  gra_spill_temp_156
	br	$31,.Lt_7_105              	# [33]  
#Block: 59 Pred: 58 22 Succ: 78 61 
	.align	4
.Lt_7_112:	# 0x1bc4
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:59 frequency = 9056.36426 (heuristic)
#<freq> BB:59 => BB:78 probability = 0.75000
#<freq> BB:59 => BB:61 probability = 0.25000
#<freq>
	.loc	2	67	0
	ldl	$1,608($sp)               	# [0]  gra_spill_temp_151
	.loc	1	543	0
	ldi	$22,13280($31)            	# [0]  
	.loc	2	97	0
	ldl	$3,544($sp)               	# [1]  gra_spill_temp_143
	.loc	1	543	0
	ldih	$22,-1($22)              	# [1]  
	.loc	2	97	0
	ldl	$0,616($sp)               	# [2]  gra_spill_temp_152
	.loc	1	543	0
	addl	$15,$22,$22              	# [2]  
	.loc	2	67	0
	srl	$1,24,$7                  	# [4]  
	.loc	2	97	0
	sll	$3,44,$16                 	# [5]  
	.loc	2	67	0
	sll	$3,40,$3                  	# [6]  
	.loc	2	97	0
	srl	$0,20,$21                 	# [6]  
	sll	$21,20,$21                	# [7]  
	.loc	2	67	0
	srl	$3,40,$3                  	# [7]  
	.loc	2	97	0
	srl	$16,44,$16                	# [8]  
	.loc	2	67	0
	sll	$7,24,$7                  	# [8]  
	or	$3,$7,$3                   	# [9]  
	.loc	2	97	0
	or	$16,$21,$16                	# [9]  
	stw	$16,164($sp)              	# [10]  dma_put+4
	.loc	2	67	0
	stw	$3,160($sp)               	# [11]  dma_put
	.loc	1	543	0
	vldd	$7,160($sp)              	# [12]  dma_put
	ldl	$21,664($sp)              	# [13]  gra_spill_temp_158
	dma	$7,$21,$22                	# [17]  
	.loc	2	67	0
	srl	$3,24,$3                  	# [17]  
	ldl	$7,568($sp)               	# [18]  gra_spill_temp_146
	.loc	2	97	0
	srl	$16,20,$16                	# [18]  
	sll	$16,20,$16                	# [19]  
	.loc	2	67	0
	sll	$3,24,$3                  	# [19]  
	.loc	1	543	0
	ldw	$28,100($sp)              	# [20]  COUNT
	.loc	2	67	0
	sll	$7,40,$2                  	# [22]  
	.loc	2	97	0
	sll	$7,44,$7                  	# [23]  
	.loc	2	67	0
	srl	$2,40,$2                  	# [23]  
	.loc	2	97	0
	srl	$7,44,$7                  	# [24]  
	.loc	2	67	0
	or	$2,$3,$1                   	# [24]  
	.loc	2	97	0
	or	$7,$16,$0                  	# [25]  
	.loc	2	67	0
	stw	$1,160($sp)               	# [25]  dma_put
	.loc	2	97	0
	stw	$0,164($sp)               	# [26]  dma_put+4
	.loc	1	543	0
	addw	$28,1,$28                	# [26]  
	.loc	1	544	0
	vldd	$24,160($sp)             	# [27]  dma_put
	ldl	$27,504($sp)              	# [28]  gra_spill_temp_138
	ldl	$25,656($sp)              	# [29]  gra_spill_temp_157
	.loc	1	543	0
	stw	$28,100($sp)              	# [30]  COUNT
	.loc	2	97	0
	stl	$0,616($sp)               	# [31]  gra_spill_temp_152
	.loc	2	67	0
	stl	$1,608($sp)               	# [32]  gra_spill_temp_151
	.loc	1	544	0
	dma	$24,$25,$27               	# [33]  
	ldw	$23,100($sp)              	# [34]  COUNT
	addw	$23,1,$23                	# [38]  
	stw	$23,100($sp)              	# [39]  COUNT
	ldw	$7,100($sp)               	# [40]  COUNT
	ldw	$22,96($sp)               	# [41]  reply
	cmpeq	$7,$22,$22              	# [45]  
#<bpre> branch predict not taken
	bne	$22,.Lt_7_146             	# [46]  
#Block: 78 Pred: 59 Succ: 80 
.L_BB78_fact_2D5_slave_kernel:	# 0x1c8c
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:78 frequency = 6792.27344 (heuristic)
#<freq>
#Block: 80 Pred: 60 78 Succ: 79 81 
.L_BB80_fact_2D5_slave_kernel:	# 0x1c8c
#<loop> Loop body line 544
#<loop> unrolled 3 times
#<freq>
#<freq> BB:80 frequency = 18868.09180 (heuristic)
#<freq> BB:80 => BB:79 probability = 0.12000
#<freq> BB:80 => BB:81 probability = 0.88000
#<freq>
	ldw	$16,96($sp)               	# [0]  reply
	cmpeq	$7,$16,$16              	# [4]  
#<bpre> branch predict not taken
	bne	$16,.L_BB79_fact_2D5_slave_kernel 	# [5]  
#Block: 81 Pred: 80 Succ: 79 60 
.L_BB81_fact_2D5_slave_kernel:	# 0x1c98
#<loop> Part of loop body line 544, head labeled .L_BB80_fact_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:81 frequency = 16603.91992 (heuristic)
#<freq> BB:81 => BB:79 probability = 0.12000
#<freq> BB:81 => BB:60 probability = 0.88000
#<freq>
	ldw	$21,96($sp)               	# [5]  reply
	cmpeq	$7,$21,$21              	# [9]  
#<bpre> branch predict not taken
	bne	$21,.L_BB79_fact_2D5_slave_kernel 	# [10]  
#Block: 60 Pred: 81 Succ: 79 80 
.Lt_7_148:	# 0x1ca4
#<loop> Part of loop body line 544, head labeled .L_BB80_fact_2D5_slave_kernel
#<freq>
#<freq> BB:60 frequency = 14611.44922 (heuristic)
#<freq> BB:60 => BB:79 probability = 0.12000
#<freq> BB:60 => BB:80 probability = 0.88000
#<freq>
	ldw	$22,96($sp)               	# [10]  reply
	cmpeq	$7,$22,$22              	# [14]  
#<bpre> branch predict taken
	beq	$22,.L_BB80_fact_2D5_slave_kernel 	# [15]  
#Block: 79 Pred: 60 80 81 Succ: 61 
.L_BB79_fact_2D5_slave_kernel:	# 0x1cb0
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:79 frequency = 6792.27295 (heuristic)
#<freq>
#Block: 61 Pred: 79 59 Succ: 62 17 
.Lt_7_146:	# 0x1cb0
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:61 frequency = 9056.36426 (heuristic)
#<freq> BB:61 => BB:62 probability = 0.01000
#<freq> BB:61 => BB:17 probability = 0.99000
#<freq>
	ldl	$25,672($sp)              	# [0]  gra_spill_temp_159
	ldl	$27,512($sp)              	# [1]  gra_spill_temp_139
	ldl	$23,640($sp)              	# [2]  gra_spill_temp_155
	addl	$27,$25,$25              	# [5]  
	ldl	$24,536($sp)              	# [6]  gra_spill_temp_142
	addw	$23,64,$23               	# [9]  
	stl	$23,640($sp)              	# [10]  gra_spill_temp_155
	cmplt	$23,$24,$23             	# [13]  
	ldl	$24,648($sp)              	# [14]  gra_spill_temp_156
	stl	$25,672($sp)              	# [15]  gra_spill_temp_159
	ldl	$25,560($sp)              	# [16]  gra_spill_temp_145
	ldl	$27,656($sp)              	# [17]  gra_spill_temp_157
	addw	$25,$24,$24              	# [20]  
	ldl	$28,496($sp)              	# [21]  gra_spill_temp_137
	ldl	$0,664($sp)               	# [22]  gra_spill_temp_158
	addl	$28,$27,$27              	# [25]  
	ldl	$1,520($sp)               	# [26]  gra_spill_temp_140
	ldl	$2,632($sp)               	# [27]  gra_spill_temp_154
	addl	$1,$0,$0                 	# [30]  
	ldl	$3,528($sp)               	# [31]  gra_spill_temp_141
	stl	$0,664($sp)               	# [32]  gra_spill_temp_158
	subl	$2,$3,$2                 	# [35]  
	stl	$2,632($sp)               	# [36]  gra_spill_temp_154
	stl	$27,656($sp)              	# [37]  gra_spill_temp_157
	stl	$24,648($sp)              	# [38]  gra_spill_temp_156
#<bpre> branch predict not taken
	beq	$23,.Lt_7_101.bpre        	# [39]  
#Block: 17 Pred: 61 15 Succ: 74 19 
.Lt_7_105:	# 0x1d18
#<loop> Loop body line 440, nesting depth: 2, estimated iterations: 100
#<freq>
#<freq> BB:17 frequency = 9056.36426 (heuristic)
#<freq> BB:17 => BB:74 probability = 0.75000
#<freq> BB:17 => BB:19 probability = 0.25000
#<freq>
	.loc	2	67	0
	ldl	$16,600($sp)              	# [0]  gra_spill_temp_150
	.loc	1	443	0
	ldi	$3,21280($31)             	# [0]  
	.loc	2	97	0
	ldl	$21,552($sp)              	# [1]  gra_spill_temp_144
	.loc	1	443	0
	ldih	$3,-1($3)                	# [1]  
	.loc	2	97	0
	ldl	$7,624($sp)               	# [2]  gra_spill_temp_153
	.loc	1	443	0
	addl	$15,$3,$3                	# [2]  
	ldl	$2,672($sp)               	# [3]  gra_spill_temp_159
	.loc	2	67	0
	srl	$16,24,$22                	# [4]  
	.loc	2	97	0
	sll	$21,44,$23                	# [5]  
	.loc	2	67	0
	sll	$21,40,$21                	# [5]  
	.loc	2	97	0
	srl	$7,20,$24                 	# [6]  
	.loc	2	67	0
	srl	$21,40,$21                	# [6]  
	.loc	2	97	0
	sll	$24,20,$24                	# [7]  
	srl	$23,44,$23                	# [7]  
	.loc	2	67	0
	sll	$22,24,$22                	# [8]  
	.loc	2	97	0
	or	$23,$24,$7                 	# [8]  
	.loc	2	67	0
	or	$21,$22,$16                	# [9]  
	.loc	2	97	0
	stw	$7,132($sp)               	# [9]  dma_get+4
	.loc	2	67	0
	stw	$16,128($sp)              	# [10]  dma_get
	.loc	1	443	0
	vldd	$1,128($sp)              	# [11]  dma_get
	.loc	2	67	0
	stl	$16,600($sp)              	# [12]  gra_spill_temp_150
	.loc	2	97	0
	stl	$7,624($sp)               	# [13]  gra_spill_temp_153
	.loc	1	443	0
	dma	$1,$2,$3                  	# [15]  
	ldw	$0,100($sp)               	# [16]  COUNT
	addw	$0,1,$0                  	# [20]  
	stw	$0,100($sp)               	# [21]  COUNT
	ldw	$7,100($sp)               	# [22]  COUNT
	ldw	$28,96($sp)               	# [23]  reply
	cmpeq	$7,$28,$28              	# [27]  
#<bpre> branch predict not taken
	bne	$28,.Lt_7_106             	# [28]  
#Block: 74 Pred: 17 Succ: 76 
.L_BB74_fact_2D5_slave_kernel:	# 0x1d90
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:74 frequency = 6792.27344 (heuristic)
#<freq>
#Block: 76 Pred: 18 74 Succ: 75 77 
.L_BB76_fact_2D5_slave_kernel:	# 0x1d90
#<loop> Loop body line 443
#<loop> unrolled 3 times
#<freq>
#<freq> BB:76 frequency = 18868.09180 (heuristic)
#<freq> BB:76 => BB:75 probability = 0.12000
#<freq> BB:76 => BB:77 probability = 0.88000
#<freq>
	ldw	$22,96($sp)               	# [0]  reply
	cmpeq	$7,$22,$22              	# [4]  
#<bpre> branch predict not taken
	bne	$22,.L_BB75_fact_2D5_slave_kernel 	# [5]  
#Block: 77 Pred: 76 Succ: 75 18 
.L_BB77_fact_2D5_slave_kernel:	# 0x1d9c
#<loop> Part of loop body line 443, head labeled .L_BB76_fact_2D5_slave_kernel
#<loop> unrolled 3 times
#<freq>
#<freq> BB:77 frequency = 16603.91992 (heuristic)
#<freq> BB:77 => BB:75 probability = 0.12000
#<freq> BB:77 => BB:18 probability = 0.88000
#<freq>
	ldw	$23,96($sp)               	# [5]  reply
	cmpeq	$7,$23,$23              	# [9]  
#<bpre> branch predict not taken
	bne	$23,.L_BB75_fact_2D5_slave_kernel 	# [10]  
#Block: 18 Pred: 77 Succ: 75 76 
.Lt_7_108:	# 0x1da8
#<loop> Part of loop body line 443, head labeled .L_BB76_fact_2D5_slave_kernel
#<freq>
#<freq> BB:18 frequency = 14611.44922 (heuristic)
#<freq> BB:18 => BB:75 probability = 0.12000
#<freq> BB:18 => BB:76 probability = 0.88000
#<freq>
	ldw	$24,96($sp)               	# [10]  reply
	cmpeq	$7,$24,$24              	# [14]  
#<bpre> branch predict taken
	beq	$24,.L_BB76_fact_2D5_slave_kernel 	# [15]  
#Block: 75 Pred: 18 76 77 Succ: 19 
.L_BB75_fact_2D5_slave_kernel:	# 0x1db4
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:75 frequency = 6792.27295 (heuristic)
#<freq>
#Block: 19 Pred: 75 17 Succ: 20 21 
.Lt_7_106:	# 0x1db4
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:19 frequency = 9056.36426 (heuristic)
#<freq> BB:19 => BB:20 probability = 0.84000
#<freq> BB:19 => BB:21 probability = 0.16000
#<freq>
	ldl	$25,576($sp)              	# [0]  gra_spill_temp_147
#<bpre> branch predict not taken
	beq	$25,.Lt_7_111             	# [4]  
#Block: 20 Pred: 19 Succ: 22 
.L_BB20_fact_2D5_slave_kernel:	# 0x1dbc
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:20 frequency = 7607.34619 (heuristic)
#<freq>
	.loc	1	447	0
	ldl	$27,592($sp)              	# [0]  gra_spill_temp_149
	.loc	1	449	0
	ldi	$28,1023($31)             	# [0]  
	sll	$28,52,$28                	# [1]  
	.loc	1	447	0
	fstd	$31,12096($27)           	# [4]  id:370 LUB+0x0
	.loc	1	448	0
	fstd	$31,12104($27)           	# [5]  id:371 LUB+0x0
	.loc	1	449	0
	fstd	$28,12112($27)           	# [6]  id:372 LUB+0x0
#Block: 22 Pred: 20 21 Succ: 23 59 
.Lt_7_110:	# 0x1dd4
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:22 frequency = 9056.36426 (heuristic)
#<freq> BB:22 => BB:23 probability = 0.94030
#<freq> BB:22 => BB:59 probability = 0.05970
#<freq>
	.loc	1	455	0
	ldl	$0,584($sp)               	# [0]  gra_spill_temp_148
#<bpre> branch predict not taken
	beq	$0,.Lt_7_112.bpre         	# [4]  
#Block: 23 Pred: 22 Succ: 25 
.L_BB23_fact_2D5_slave_kernel:	# 0x1ddc
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:23 frequency = 8515.68555 (heuristic)
#<freq>
	ldl	$26,640($sp)              	# [0]  gra_spill_temp_155
	ldi	$24,21280($31)            	# [0]  
	ldl	$27,488($sp)              	# [1]  gra_spill_temp_136
	ldih	$24,-1($24)              	# [1]  
	ldl	$28,592($sp)              	# [2]  gra_spill_temp_149
	addl	$15,$24,$24              	# [2]  
	ldl	$23,648($sp)              	# [3]  gra_spill_temp_156
	vfmov	$31,$13                 	# [3]  
	ldi	$25,-24256($15)           	# [4]  LUB
	cmplt	$26,$27,$26             	# [5]  
	ldi	$27,13280($31)            	# [6]  
	ldih	$27,-1($27)              	# [7]  
	addl	$15,$27,$27              	# [8]  
	br	$31,.Lt_7_116              	# [8]  
#Block: 58 Pred: 42 46 Succ: 59 25 
	.align	4
.Lt_7_154:	# 0x1e14
.Lt_7_40:	# 0x1e14
#<loop> Part of loop body line 455, head labeled .Lt_7_116
#<freq>
#<freq> BB:58 frequency = 4257843.00000 (heuristic)
#<freq> BB:58 => BB:59 probability = 0.00200
#<freq> BB:58 => BB:25 probability = 0.99800
#<freq>
	.loc	1	518	0
	addw	$13,1,$13                	# [0]  
	ldi	$24,40($24)               	# [0]  
	cmpeq	$13,$8,$0               	# [1]  
	ldi	$25,24($25)               	# [1]  
	ldi	$27,16($27)               	# [2]  
	ldi	$28,-24($28)              	# [2]  
	addw	$23,1,$23                	# [3]  
#<bpre> branch predict not taken
	bne	$0,.Lt_7_112.bpre         	# [3]  
#Block: 25 Pred: 58 23 Succ: 26 37 
.Lt_7_116:	# 0x1e34
#<loop> Loop body line 455, nesting depth: 3, estimated iterations: 500
#<freq>
#<freq> BB:25 frequency = 4257843.00000 (heuristic)
#<freq> BB:25 => BB:26 probability = 0.75000
#<freq> BB:25 => BB:37 probability = 0.25000
#<freq>
	.loc	1	455	0
	cmplt	$23,$6,$1               	# [0]  
#<bpre> branch predict not taken
	bne	$1,.Lt_7_117              	# [1]  
#Block: 26 Pred: 25 36 Succ: 27 31 
	.align	4
.Lt_7_119:	# 0x1e3c
#<loop> Loop body line 455
#<freq>
#<freq> BB:26 frequency = 26611518.00000 (heuristic)
#<freq> BB:26 => BB:27 probability = 0.81116
#<freq> BB:26 => BB:31 probability = 0.18884
#<freq>
#<bpre> branch predict not taken
	beq	$10,.Lt_7_120             	# [0]  
#Block: 27 Pred: 26 Succ: 28 
.L_BB27_fact_2D5_slave_kernel:	# 0x1e40
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:27 frequency = 21586166.00000 (heuristic)
#<freq>
	getc $21

	.loc	1	469	0
	addw	$5,1,$5                  	# [0]  
	.loc	1	467	0
	srlow	$21,64,$7               	# [0]  
	.loc	1	465	0
	vstd	$21,192($sp)             	# [1]  _v
	.loc	1	468	0
	srlow	$21,128,$21             	# [1]  
	.loc	1	466	0
	fldd	$2,192($sp)              	# [2]  _v
	.loc	1	469	0
	cmple	$8,$5,$16               	# [2]  
	.loc	1	471	0
	addw	$6,1,$6                  	# [3]  
	.loc	1	466	0
	fstd	$2,0($4)                 	# [6]  id:381 LUB+0x0
#Block: 28 Pred: 27 Succ: 29 31 
.L_BB28_fact_2D5_slave_kernel:	# 0x1e6c
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:28 frequency = 21586166.00000 (heuristic)
#<freq> BB:28 => BB:29 probability = 0.50000
#<freq> BB:28 => BB:31 probability = 0.50000
#<freq>
	.loc	1	467	0
	fstd	$7,8($4)                 	# [7]  id:383 LUB+0x0
	.loc	1	468	0
	fstd	$21,16($4)               	# [8]  id:385 LUB+0x0
	.loc	1	469	0
	ldi	$4,24($4)                 	# [8]  
#<bpre> branch predict unknown
	beq	$16,.Lt_7_120             	# [9]  
#Block: 29 Pred: 28 Succ: 31 
.L_BB29_fact_2D5_slave_kernel:	# 0x1e7c
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:29 frequency = 10793083.00000 (heuristic)
#<freq>
	.loc	1	470	0
	mulw	$11,$12,$2               	# [0]  
	ldl	$1,680($sp)               	# [0]  gra_spill_temp_160
	subw	$1,$2,$1                 	# [5]  
	cmplt	$12,$1,$0               	# [6]  
	seleq	$0,$1,$12,$0            	# [7]  
	s4subl	$0,$0,$22              	# [8]  
	subw	$5,$0,$5                 	# [8]  
	s8addl	$22,$31,$22            	# [9]  
	subl	$4,$22,$4                	# [10]  
#Block: 31 Pred: 26 28 29 Succ: 32 93 
.Lt_7_120:	# 0x1ea0
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:31 frequency = 26611518.00000 (heuristic)
#<freq> BB:31 => BB:32 probability = 0.81116
#<freq> BB:31 => BB:93 probability = 0.18884
#<freq>
	.loc	1	471	0
#<bpre> branch predict not taken
	beq	$9,.L_BB93_fact_2D5_slave_kernel 	# [0]  
#Block: 32 Pred: 31 Succ: 33 
.L_BB32_fact_2D5_slave_kernel:	# 0x1ea4
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:32 frequency = 21586166.00000 (heuristic)
#<freq>
	getr $16

	.loc	1	479	0
	addw	$5,1,$5                  	# [0]  
	.loc	1	481	0
	addw	$6,1,$6                  	# [0]  
	.loc	1	475	0
	vstd	$16,192($sp)             	# [1]  _v
	.loc	1	481	0
	cmplt	$23,$6,$7               	# [1]  
	.loc	1	476	0
	fldd	$3,192($sp)              	# [2]  _v
	.loc	1	479	0
	cmple	$8,$5,$22               	# [2]  
	.loc	1	477	0
	srlow	$16,64,$21              	# [3]  
	.loc	1	476	0
	fstd	$3,0($4)                 	# [6]  id:386 LUB+0x0
	.loc	1	478	0
	srlow	$16,128,$16             	# [7]  
#Block: 33 Pred: 32 Succ: 34 36 
.L_BB33_fact_2D5_slave_kernel:	# 0x1ed4
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:33 frequency = 21586166.00000 (heuristic)
#<freq> BB:33 => BB:34 probability = 0.50000
#<freq> BB:33 => BB:36 probability = 0.50000
#<freq>
	.loc	1	477	0
	fstd	$21,8($4)                	# [26]  id:387 LUB+0x0
	.loc	1	478	0
	fstd	$16,16($4)               	# [27]  id:388 LUB+0x0
	.loc	1	479	0
	ldi	$4,24($4)                 	# [27]  
#<bpre> branch predict unknown
	beq	$22,.Lt_7_124             	# [28]  
#Block: 34 Pred: 33 Succ: 36 
.L_BB34_fact_2D5_slave_kernel:	# 0x1ee4
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:34 frequency = 10793083.00000 (heuristic)
#<freq>
	.loc	1	480	0
	mulw	$11,$12,$1               	# [0]  
	ldl	$0,680($sp)               	# [0]  gra_spill_temp_160
	subw	$0,$1,$0                 	# [5]  
	cmplt	$12,$0,$22              	# [6]  
	seleq	$22,$0,$12,$22          	# [7]  
	s4subl	$22,$22,$21            	# [8]  
	subw	$5,$22,$5                	# [8]  
	s8addl	$21,$31,$21            	# [9]  
	subl	$4,$21,$4                	# [10]  
#Block: 36 Pred: 93 33 34 Succ: 37 26 
.Lt_7_124:	# 0x1f08
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:36 frequency = 26611518.00000 (heuristic)
#<freq> BB:36 => BB:37 probability = 0.12000
#<freq> BB:36 => BB:26 probability = 0.88000
#<freq>
	.loc	1	481	0
#<bpre> branch predict taken
	beq	$7,.Lt_7_119              	# [0]  
#Block: 37 Pred: 36 25 Succ: 38 42 
.Lt_7_117:	# 0x1f0c
#<loop> Part of loop body line 455, head labeled .Lt_7_116
#<freq>
#<freq> BB:37 frequency = 4257843.00000 (heuristic)
#<freq> BB:37 => BB:38 probability = 0.81116
#<freq> BB:37 => BB:42 probability = 0.18884
#<freq>
	.loc	1	492	0
	fldd	$7,16($25)               	# [1]  id:392 LUB+0x0
	.loc	1	504	0
	ldi	$21,1023($31)             	# [1]  
	.loc	1	492	0
	fldd	$3,0($24)                	# [2]  id:391 LA+0x0
	.loc	1	504	0
	sll	$21,52,$21                	# [2]  
	.loc	1	496	0
	fldd	$0,8($25)                	# [3]  id:396 LUB+0x0
	.loc	1	492	0
	fmuld	$3,$7,$3                	# [6]  
	.loc	1	496	0
	fldd	$1,16($24)               	# [7]  id:395 LA+0x0
	.loc	1	495	0
	fldd	$7,12112($28)            	# [8]  id:394 LUB+0x0
	.loc	1	496	0
	fnmad	$0,$3,$1,$0             	# [13]  
	.loc	1	495	0
	fldd	$2,8($24)                	# [14]  id:393 LA+0x0
	.loc	1	496	0
	fldd	$22,12096($28)           	# [15]  id:397 LUB+0x0
	.loc	1	495	0
	fmuld	$2,$7,$2                	# [18]  
	.loc	1	489	0
	fldd	$16,32($24)              	# [19]  id:390 LA+0x0
	.loc	1	496	0
	fnmad	$22,$2,$0,$22           	# [25]  
	.loc	1	488	0
	fldd	$7,24($24)               	# [26]  id:389 LA+0x0
	.loc	1	504	0
	fdivd	$21,$22,$21             	# [32]  
	.loc	1	500	0
	fstd	$3,0($27)                	# [33]  id:398 LLB+0x0
	.loc	1	501	0
	fstd	$2,8($27)                	# [34]  id:399 LLB+0x0
	.loc	1	502	0
	fstd	$7,12072($28)            	# [36]  id:400 LUB+0x0
	.loc	1	503	0
	fstd	$16,12080($28)           	# [37]  id:401 LUB+0x0
	.loc	1	504	0
	fstd	$21,12088($28)           	# [64]  id:402 LUB+0x0
#<bpre> branch predict not taken
	beq	$26,.Lt_7_133             	# [65]  
#Block: 38 Pred: 37 Succ: 39 40 
.L_BB38_fact_2D5_slave_kernel:	# 0x1f64
#<loop> Part of loop body line 455, head labeled .Lt_7_116
#<freq>
#<freq> BB:38 frequency = 3453786.75000 (heuristic)
#<freq> BB:38 => BB:39 probability = 0.84000
#<freq> BB:38 => BB:40 probability = 0.16000
#<freq>
	.loc	1	512	0
	fstd	$16,232($sp)             	# [23]  _v+8
	.loc	1	511	0
	fstd	$7,224($sp)              	# [30]  _v
	.loc	1	513	0
	fstd	$21,240($sp)             	# [64]  _v+16
#<bpre> branch predict not taken
	beq	$20,.Lt_7_131             	# [65]  
#Block: 39 Pred: 38 Succ: 40 
.L_BB39_fact_2D5_slave_kernel:	# 0x1f74
#<loop> Part of loop body line 455, head labeled .Lt_7_116
#<freq>
#<freq> BB:39 frequency = 2901180.75000 (heuristic)
#<freq>
	.loc	1	514	0
	vldd	$22,224($sp)             	# [0]  _v
	putc $22,$18

#Block: 40 Pred: 39 38 Succ: 41 42 
.Lt_7_131:	# 0x1f84
#<loop> Part of loop body line 455, head labeled .Lt_7_116
#<freq>
#<freq> BB:40 frequency = 3453786.75000 (heuristic)
#<freq> BB:40 => BB:41 probability = 0.84000
#<freq> BB:40 => BB:42 probability = 0.16000
#<freq>
#<bpre> branch predict not taken
	beq	$17,.Lt_7_133             	# [0]  
#Block: 41 Pred: 40 Succ: 42 
.L_BB41_fact_2D5_slave_kernel:	# 0x1f88
#<loop> Part of loop body line 455, head labeled .Lt_7_116
#<freq>
#<freq> BB:41 frequency = 2901180.75000 (heuristic)
#<freq>
	.loc	1	515	0
	vldd	$0,224($sp)              	# [0]  _v
	putr $0,$19

#Block: 42 Pred: 37 40 41 52 56 Succ: 43 58 
.Lt_7_133:	# 0x1f98
.Lt_7_129:	# 0x1f98
.Lt_7_74:	# 0x1f98
#<loop> Loop body line 518
#<freq>
#<freq> BB:42 frequency = 7323363.00000 (heuristic)
#<freq> BB:42 => BB:43 probability = 0.80000
#<freq> BB:42 => BB:58 probability = 0.20000
#<freq>
	.loc	1	518	0
	cmple	$14,$6,$1               	# [0]  
#<bpre> branch predict not taken
	bne	$1,.Lt_7_154.bpre         	# [1]  
#Block: 43 Pred: 42 Succ: 44 
.L_BB43_fact_2D5_slave_kernel:	# 0x1fa0
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:43 frequency = 5858690.50000 (heuristic)
#<freq>
	rcsr $7,0x34

#Block: 44 Pred: 43 Succ: 45 47 
.L_BB44_fact_2D5_slave_kernel:	# 0x1fac
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:44 frequency = 5858690.50000 (heuristic)
#<freq> BB:44 => BB:45 probability = 0.84000
#<freq> BB:44 => BB:47 probability = 0.16000
#<freq>
	.loc	1	15	0
#<bpre> branch predict not taken
	beq	$7,.Lt_7_135              	# [0]  
#Block: 45 Pred: 44 Succ: 46 
.L_BB45_fact_2D5_slave_kernel:	# 0x1fb0
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:45 frequency = 4921300.00000 (heuristic)
#<freq>
	rcsr $7,0x35

#Block: 46 Pred: 45 Succ: 58 47 
.L_BB46_fact_2D5_slave_kernel:	# 0x1fbc
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:46 frequency = 4921300.00000 (heuristic)
#<freq> BB:46 => BB:58 probability = 0.56757
#<freq> BB:46 => BB:47 probability = 0.43243
#<freq>
	.loc	1	518	0
#<bpre> branch predict taken
	bne	$7,.Lt_7_154              	# [0]  
#Block: 47 Pred: 44 46 Succ: 48 52 
.Lt_7_135:	# 0x1fc0
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:47 frequency = 3065520.25000 (heuristic)
#<freq> BB:47 => BB:48 probability = 0.81116
#<freq> BB:47 => BB:52 probability = 0.18884
#<freq>
#<bpre> branch predict not taken
	beq	$10,.Lt_7_137             	# [0]  
#Block: 48 Pred: 47 Succ: 49 
.L_BB48_fact_2D5_slave_kernel:	# 0x1fc4
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:48 frequency = 2486623.75000 (heuristic)
#<freq>
	getc $7

#Block: 49 Pred: 48 Succ: 50 51 
.L_BB49_fact_2D5_slave_kernel:	# 0x1fd0
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:49 frequency = 2486623.75000 (heuristic)
#<freq> BB:49 => BB:50 probability = 0.50000
#<freq> BB:49 => BB:51 probability = 0.50000
#<freq>
	.loc	1	525	0
	srlow	$7,64,$16               	# [3]  
	.loc	1	527	0
	addw	$5,1,$5                  	# [3]  
	.loc	1	523	0
	vstd	$7,256($sp)              	# [4]  _v
	.loc	1	526	0
	srlow	$7,128,$3               	# [4]  
	.loc	1	524	0
	fldd	$21,256($sp)             	# [5]  _v
	.loc	1	527	0
	cmple	$8,$5,$2                	# [5]  
	.loc	1	524	0
	fstd	$21,0($4)                	# [9]  id:409 LUB+0x0
	.loc	1	525	0
	fstd	$16,8($4)                	# [10]  id:411 LUB+0x0
	.loc	1	526	0
	fstd	$3,16($4)                	# [11]  id:413 LUB+0x0
	.loc	1	527	0
	ldi	$4,24($4)                 	# [11]  
#<bpre> branch predict unknown
	beq	$2,.Lt_7_139              	# [12]  
#Block: 50 Pred: 49 Succ: 51 
.L_BB50_fact_2D5_slave_kernel:	# 0x1ffc
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:50 frequency = 1243311.87500 (heuristic)
#<freq>
	.loc	1	528	0
	mulw	$11,$12,$2               	# [0]  
	ldl	$1,680($sp)               	# [0]  gra_spill_temp_160
	subw	$1,$2,$1                 	# [5]  
	cmplt	$12,$1,$0               	# [6]  
	seleq	$0,$1,$12,$0            	# [7]  
	s4subl	$0,$0,$22              	# [8]  
	subw	$5,$0,$5                 	# [8]  
	s8addl	$22,$31,$22            	# [9]  
	subl	$4,$22,$4                	# [10]  
#Block: 51 Pred: 50 49 Succ: 52 
.Lt_7_139:	# 0x2020
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:51 frequency = 2486623.75000 (heuristic)
#<freq>
	.loc	1	529	0
	addw	$6,1,$6                  	# [0]  
#Block: 52 Pred: 51 47 Succ: 53 42 
.Lt_7_137:	# 0x2024
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:52 frequency = 3065520.25000 (heuristic)
#<freq> BB:52 => BB:53 probability = 0.12000
#<freq> BB:52 => BB:42 probability = 0.88000
#<freq>
#<bpre> branch predict taken
	beq	$9,.Lt_7_133              	# [0]  
#Block: 53 Pred: 52 Succ: 54 
.L_BB53_fact_2D5_slave_kernel:	# 0x2028
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:53 frequency = 367862.43750 (heuristic)
#<freq>
	getr $7

#Block: 54 Pred: 53 Succ: 55 56 
.L_BB54_fact_2D5_slave_kernel:	# 0x2034
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:54 frequency = 367862.43750 (heuristic)
#<freq> BB:54 => BB:55 probability = 0.50000
#<freq> BB:54 => BB:56 probability = 0.50000
#<freq>
	.loc	1	535	0
	srlow	$7,64,$21               	# [0]  
	.loc	1	537	0
	addw	$5,1,$5                  	# [0]  
	.loc	1	533	0
	vstd	$7,256($sp)              	# [1]  _v
	.loc	1	536	0
	srlow	$7,128,$16              	# [1]  
	.loc	1	534	0
	fldd	$22,256($sp)             	# [2]  _v
	.loc	1	537	0
	cmple	$8,$5,$3                	# [2]  
	.loc	1	534	0
	fstd	$22,0($4)                	# [6]  id:414 LUB+0x0
	.loc	1	535	0
	fstd	$21,8($4)                	# [7]  id:415 LUB+0x0
	.loc	1	536	0
	fstd	$16,16($4)               	# [8]  id:416 LUB+0x0
	.loc	1	537	0
	ldi	$4,24($4)                 	# [8]  
#<bpre> branch predict unknown
	beq	$3,.Lt_7_143              	# [9]  
#Block: 55 Pred: 54 Succ: 56 
.L_BB55_fact_2D5_slave_kernel:	# 0x2060
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:55 frequency = 183931.21875 (heuristic)
#<freq>
	.loc	1	538	0
	mulw	$11,$12,$3               	# [0]  
	ldl	$2,680($sp)               	# [0]  gra_spill_temp_160
	subw	$2,$3,$2                 	# [5]  
	cmplt	$12,$2,$1               	# [6]  
	seleq	$1,$2,$12,$1            	# [7]  
	s4subl	$1,$1,$0               	# [8]  
	subw	$5,$1,$5                 	# [8]  
	s8addl	$0,$31,$0              	# [9]  
	subl	$4,$0,$4                 	# [10]  
#Block: 56 Pred: 55 54 Succ: 42 
.Lt_7_143:	# 0x2084
#<loop> Part of loop body line 518, head labeled .Lt_7_133
#<freq>
#<freq> BB:56 frequency = 367862.43750 (heuristic)
#<freq>
	.loc	1	539	0
	addw	$6,1,$6                  	# [9]  
	br	$31,.Lt_7_133              	# [18]  
#Block: 21 Pred: 19 Succ: 22 
.Lt_7_111:	# 0x208c
#<loop> Part of loop body line 440, head labeled .Lt_7_105
#<freq>
#<freq> BB:21 frequency = 1449.01831 (heuristic)
#<freq>
	.loc	1	453	0
	ldl	$16,632($sp)              	# [0]  gra_spill_temp_154
	ldl	$7,592($sp)               	# [1]  gra_spill_temp_149
	fldd	$22,0($16)               	# [4]  id:373
	fstd	$22,12096($7)            	# [8]  id:374 LUB+0x0
	.loc	1	454	0
	fldd	$21,8($16)               	# [9]  id:375
	fstd	$21,12104($7)            	# [13]  id:376 LUB+0x0
	.loc	1	455	0
	fldd	$16,16($16)              	# [14]  id:377
	fstd	$16,12112($7)            	# [18]  id:378 LUB+0x0
	br	$31,.Lt_7_110              	# [19]  
#Block: 6 Pred: 4 Succ: 7 
.Lt_7_92:	# 0x20b0
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:6 frequency = 15.61464 (heuristic)
#<freq>
	.loc	1	435	0
	ldl	$14,344($sp)              	# [0]  gra_spill_temp_118
	mulw	$14,$8,$14               	# [4]  
	br	$31,.Lt_7_91               	# [4]  
#Block: 13 Pred: 11 Succ: 14 
.Lt_7_100:	# 0x20bc
#<loop> Part of loop body line 73, head labeled .Lt_7_90
#<freq>
#<freq> BB:13 frequency = 15.61464 (heuristic)
#<freq>
	.loc	1	440	0
	vfmov	$31,$6                  	# [13]  
	br	$31,.Lt_7_99               	# [13]  
#Block: 63 Pred: 62 2 Succ: 
.Lt_7_86:	# 0x20c4
#<freq>
#<freq> BB:63 frequency = 1.00001 (heuristic)
#<freq>
	.loc	1	555	0
# 551  #undef HALO
# 552  #undef MLEN
# 553  #undef OFFSET
# 554  	}
# 555  	return 0;
	ldl	$16,328($sp)              	# [0]  gra_spill_temp_116
	.loc	1	544	0
	vfmov	$31,$0                  	# [0]  
	.loc	1	555	0
	ldl	$26,0($sp)                	# [1]  return_address
	ldl	$14,336($sp)              	# [2]  gra_spill_temp_117
	ldl	$13,288($sp)              	# [3]  gra_spill_temp_111
	ldl	$12,312($sp)              	# [4]  gra_spill_temp_114
	ldl	$11,296($sp)              	# [5]  gra_spill_temp_112
	ldl	$10,304($sp)              	# [6]  gra_spill_temp_113
	ldl	$9,320($sp)               	# [7]  gra_spill_temp_115
	vfmov	$15,$sp                 	# [7]  
	vfmov	$16,$15                 	# [8]  
	ret	$31,($26),1               	# [8]  
#Block: 93 Pred: 31 Succ: 36 
	.align	4
.L_BB93_fact_2D5_slave_kernel:	# 0x20f4
#<loop> Part of loop body line 455, head labeled .Lt_7_119
#<freq>
#<freq> BB:93 frequency = 5025351.00000 (heuristic)
#<freq>
	.loc	1	481	0
	cmplt	$23,$6,$7               	# [9]  
	.loc	1	555	0
	br	$31,.Lt_7_124              	# [18]  
.Lt_7_101.bpre:
	br .Lt_7_101
.Lt_7_112.bpre:
	br .Lt_7_112
.Lt_7_154.bpre:
	br .Lt_7_154
.L_CC_fact_2D5_slave_kernel:
#PU cycle count: 726149120.000000
	.end	fact_2D5_slave_kernel

	.section .rodata
	.org 0x8
	.align	0
	# offset 8
	.ascii	"\x00\x00\x00\x00\x00\x00\xf0\x3f"	# double 1.00000
	.section .text1
	.align 4

	# Program Unit: forward_2D5_slave
	.align 4
	.ent	forward_2D5_slave#
	.globl	forward_2D5_slave
forward_2D5_slave:	# 0x2090
	# reply = 32
	# COUNT = 36
	# dma_get = 64
	# info = 96
	# return_address = 0
#Block: 1 Pred: Succ: 5 3 
	.loc	1	559	0
# 556  }
# 557  
# 558  void forward_2D5_slave(void *_ptr)
# 559  {
.L_BB1_forward_2D5_slave:	# 0x2090
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq> BB:1 => BB:5 probability = 0.75000
#<freq> BB:1 => BB:3 probability = 0.25000
#<freq>
	ldih	$gp,0($27)               	!gpdisp!8	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!8	# [1]  0
	
$ng..forward_2D5_slave:
	ldi	$sp,-160($sp)             	# [2]  
	.loc	2	79	0
	ornot	$31,$31,$19             	# [2]  
	.loc	1	559	0
	stl	$26,0($sp)                	# [3]  return_address
	.loc	2	79	0
	.prologue
	.frame $30,160,$26,0
	.mask 0x4000000,-160
	srl	$19,60,$19                	# [3]  
	ldw	$18,68($sp)               	# [4]  dma_get+4
	mov	1,$7                      	# [4]  
	sll	$7,24,$7                  	# [5]  
	sll	$19,24,$19                	# [5]  
	.loc	2	67	0
	ldw	$8,64($sp)                	# [6]  dma_get
	.loc	2	79	0
	and	$7,$19,$7                 	# [6]  
	.loc	2	85	0
	ldi	$17,-1($31)               	# [7]  
	.loc	2	67	0
	mov	40,$5                     	# [7]  
	.loc	2	79	0
	andnot	$18,$19,$18            	# [8]  
	.loc	2	85	0
	ldih	$17,4096($17)            	# [8]  
	.loc	2	79	0
	or	$7,$18,$7                  	# [9]  
	.loc	2	67	0
	sll	$5,40,$4                  	# [9]  
	.loc	2	85	0
	and	$7,$17,$7                 	# [10]  
	.loc	2	97	0
	sll	$5,44,$5                  	# [10]  
	srl	$7,20,$6                  	# [11]  
	.loc	2	67	0
	srl	$8,24,$8                  	# [11]  
	sll	$8,24,$8                  	# [12]  
	.loc	2	97	0
	sll	$6,20,$6                  	# [12]  
	srl	$5,44,$5                  	# [13]  
	.loc	2	67	0
	srl	$4,40,$4                  	# [13]  
	or	$4,$8,$4                   	# [14]  
	.loc	2	97	0
	or	$5,$6,$5                   	# [14]  
	.loc	2	73	0
	ldi	$6,32($sp)                	# [15]  reply
	.loc	2	97	0
	stw	$5,68($sp)                	# [15]  dma_get+4
	.loc	2	73	0
	sth	$6,72($sp)                	# [16]  dma_get+8
	.loc	1	565	0
# 561  	volatile int COUNT = 0;
# 562  	Info info;
# 563  	dma_desc dma_get;
# 564  	WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
# 565  	WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(Info), COUNT);
	ldi	$3,96($sp)                	# [16]  info
	.loc	2	67	0
	stw	$4,64($sp)                	# [17]  dma_get
	.loc	2	103	0
	stw	$31,76($sp)               	# [18]  dma_get+12
	.loc	1	565	0
	vldd	$2,64($sp)               	# [19]  dma_get
	.loc	1	560	0
	stw	$31,32($sp)               	# [20]  reply
	.loc	1	561	0
	stw	$31,36($sp)               	# [21]  COUNT
	.loc	1	565	0
	dma	$2,$16,$3                 	# [23]  
	ldw	$1,36($sp)                	# [24]  COUNT
	addw	$1,1,$1                  	# [28]  
	stw	$1,36($sp)                	# [29]  COUNT
	.loc	1	566	0
# 566  	dma_wait(&reply, COUNT);
	ldw	$4,36($sp)                	# [30]  COUNT
	ldw	$0,32($sp)                	# [31]  reply
	cmpeq	$4,$0,$0                	# [35]  
#<bpre> branch predict not taken
	bne	$0,.Lt_8_5                	# [36]  
#Block: 5 Pred: 1 Succ: 7 
.L_BB5_forward_2D5_slave:	# 0x2150
#<freq>
#<freq> BB:5 frequency = 0.75000 (heuristic)
#<freq>
#Block: 7 Pred: 2 5 Succ: 6 8 
.L_BB7_forward_2D5_slave:	# 0x2150
#<loop> Loop body line 566
#<loop> unrolled 3 times
#<freq>
#<freq> BB:7 frequency = 2.75000 (heuristic)
#<freq> BB:7 => BB:6 probability = 0.12000
#<freq> BB:7 => BB:8 probability = 0.88000
#<freq>
	ldw	$20,32($sp)               	# [0]  reply
	cmpeq	$4,$20,$20              	# [4]  
#<bpre> branch predict not taken
	bne	$20,.L_BB6_forward_2D5_slave 	# [5]  
#Block: 8 Pred: 7 Succ: 6 2 
.L_BB8_forward_2D5_slave:	# 0x215c
#<loop> Part of loop body line 566, head labeled .L_BB7_forward_2D5_slave
#<loop> unrolled 3 times
#<freq>
#<freq> BB:8 frequency = 2.42000 (heuristic)
#<freq> BB:8 => BB:6 probability = 0.12000
#<freq> BB:8 => BB:2 probability = 0.88000
#<freq>
	ldw	$21,32($sp)               	# [5]  reply
	cmpeq	$4,$21,$21              	# [9]  
#<bpre> branch predict not taken
	bne	$21,.L_BB6_forward_2D5_slave 	# [10]  
#Block: 2 Pred: 8 Succ: 6 7 
.Lt_8_7:	# 0x2168
#<loop> Part of loop body line 566, head labeled .L_BB7_forward_2D5_slave
#<freq>
#<freq> BB:2 frequency = 2.12960 (heuristic)
#<freq> BB:2 => BB:6 probability = 0.12000
#<freq> BB:2 => BB:7 probability = 0.88000
#<freq>
	ldw	$22,32($sp)               	# [10]  reply
	cmpeq	$4,$22,$22              	# [14]  
#<bpre> branch predict taken
	beq	$22,.L_BB7_forward_2D5_slave 	# [15]  
#Block: 6 Pred: 2 7 8 Succ: 3 
.L_BB6_forward_2D5_slave:	# 0x2174
#<freq>
#<freq> BB:6 frequency = 0.75000 (heuristic)
#<freq>
#Block: 3 Pred: 6 1 Succ: 4 
.Lt_8_5:	# 0x2174
#<freq>
#<freq> BB:3 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	567	0
# 567  	forward_2D5_slave_kernel(info.X, info.A, info.B, info.M, info.N, info.L);
	ldw	$21,128($sp)              	# [33]  info+32
	ldw	$20,124($sp)              	# [34]  info+28
	ldw	$19,120($sp)              	# [35]  info+24
	ldl	$18,112($sp)              	# [36]  info+16
	ldl	$17,104($sp)              	# [37]  info+8
	ldl	$16,96($sp)               	# [38]  info
	bsr	$26,$ng..forward_2D5_slave_kernel 	# [39]  forward_2D5_slave_kernel
#Block: 4 Pred: 3 Succ: 
.L_BB4_forward_2D5_slave:	# 0x2190
#<freq>
#<freq> BB:4 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	568	0
# 568  	return;
	ldl	$26,0($sp)                	# [0]  return_address
	ldi	$sp,160($sp)              	# [0]  
	ret	$31,($26),1               	# [4]  
.L_CC_forward_2D5_slave:
#PU cycle count: 52.599201
	.end	forward_2D5_slave
	.section .text1

	# Program Unit: backward_2D5_slave
	.align 4
	.ent	backward_2D5_slave#
	.globl	backward_2D5_slave
backward_2D5_slave:	# 0x2190
	# reply = 32
	# COUNT = 36
	# dma_get = 64
	# info = 96
	# return_address = 0
#Block: 1 Pred: Succ: 5 3 
	.loc	1	572	0
# 569  }
# 570  
# 571  void backward_2D5_slave(void *_ptr)
# 572  {
.L_BB1_backward_2D5_slave:	# 0x2190
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq> BB:1 => BB:5 probability = 0.75000
#<freq> BB:1 => BB:3 probability = 0.25000
#<freq>
	ldih	$gp,0($27)               	!gpdisp!9	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!9	# [1]  0
	
$ng..backward_2D5_slave:
	ldi	$sp,-160($sp)             	# [2]  
	.loc	2	79	0
	ornot	$31,$31,$19             	# [2]  
	.loc	1	572	0
	stl	$26,0($sp)                	# [3]  return_address
	.loc	2	79	0
	.prologue
	.frame $30,160,$26,0
	.mask 0x4000000,-160
	srl	$19,60,$19                	# [3]  
	ldw	$18,68($sp)               	# [4]  dma_get+4
	mov	1,$7                      	# [4]  
	sll	$7,24,$7                  	# [5]  
	sll	$19,24,$19                	# [5]  
	.loc	2	67	0
	ldw	$8,64($sp)                	# [6]  dma_get
	.loc	2	79	0
	and	$7,$19,$7                 	# [6]  
	.loc	2	85	0
	ldi	$17,-1($31)               	# [7]  
	.loc	2	67	0
	mov	40,$5                     	# [7]  
	.loc	2	79	0
	andnot	$18,$19,$18            	# [8]  
	.loc	2	85	0
	ldih	$17,4096($17)            	# [8]  
	.loc	2	79	0
	or	$7,$18,$7                  	# [9]  
	.loc	2	67	0
	sll	$5,40,$4                  	# [9]  
	.loc	2	85	0
	and	$7,$17,$7                 	# [10]  
	.loc	2	97	0
	sll	$5,44,$5                  	# [10]  
	srl	$7,20,$6                  	# [11]  
	.loc	2	67	0
	srl	$8,24,$8                  	# [11]  
	sll	$8,24,$8                  	# [12]  
	.loc	2	97	0
	sll	$6,20,$6                  	# [12]  
	srl	$5,44,$5                  	# [13]  
	.loc	2	67	0
	srl	$4,40,$4                  	# [13]  
	or	$4,$8,$4                   	# [14]  
	.loc	2	97	0
	or	$5,$6,$5                   	# [14]  
	.loc	2	73	0
	ldi	$6,32($sp)                	# [15]  reply
	.loc	2	97	0
	stw	$5,68($sp)                	# [15]  dma_get+4
	.loc	2	73	0
	sth	$6,72($sp)                	# [16]  dma_get+8
	.loc	1	578	0
# 574  	volatile int COUNT = 0;
# 575  	Info info;
# 576  	dma_desc dma_get;
# 577  	WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
# 578  	WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(Info), COUNT);
	ldi	$3,96($sp)                	# [16]  info
	.loc	2	67	0
	stw	$4,64($sp)                	# [17]  dma_get
	.loc	2	103	0
	stw	$31,76($sp)               	# [18]  dma_get+12
	.loc	1	578	0
	vldd	$2,64($sp)               	# [19]  dma_get
	.loc	1	573	0
	stw	$31,32($sp)               	# [20]  reply
	.loc	1	574	0
	stw	$31,36($sp)               	# [21]  COUNT
	.loc	1	578	0
	dma	$2,$16,$3                 	# [23]  
	ldw	$1,36($sp)                	# [24]  COUNT
	addw	$1,1,$1                  	# [28]  
	stw	$1,36($sp)                	# [29]  COUNT
	.loc	1	579	0
# 579  	dma_wait(&reply, COUNT);
	ldw	$4,36($sp)                	# [30]  COUNT
	ldw	$0,32($sp)                	# [31]  reply
	cmpeq	$4,$0,$0                	# [35]  
#<bpre> branch predict not taken
	bne	$0,.Lt_9_5                	# [36]  
#Block: 5 Pred: 1 Succ: 7 
.L_BB5_backward_2D5_slave:	# 0x2250
#<freq>
#<freq> BB:5 frequency = 0.75000 (heuristic)
#<freq>
#Block: 7 Pred: 2 5 Succ: 6 8 
.L_BB7_backward_2D5_slave:	# 0x2250
#<loop> Loop body line 579
#<loop> unrolled 3 times
#<freq>
#<freq> BB:7 frequency = 2.75000 (heuristic)
#<freq> BB:7 => BB:6 probability = 0.12000
#<freq> BB:7 => BB:8 probability = 0.88000
#<freq>
	ldw	$20,32($sp)               	# [0]  reply
	cmpeq	$4,$20,$20              	# [4]  
#<bpre> branch predict not taken
	bne	$20,.L_BB6_backward_2D5_slave 	# [5]  
#Block: 8 Pred: 7 Succ: 6 2 
.L_BB8_backward_2D5_slave:	# 0x225c
#<loop> Part of loop body line 579, head labeled .L_BB7_backward_2D5_slave
#<loop> unrolled 3 times
#<freq>
#<freq> BB:8 frequency = 2.42000 (heuristic)
#<freq> BB:8 => BB:6 probability = 0.12000
#<freq> BB:8 => BB:2 probability = 0.88000
#<freq>
	ldw	$21,32($sp)               	# [5]  reply
	cmpeq	$4,$21,$21              	# [9]  
#<bpre> branch predict not taken
	bne	$21,.L_BB6_backward_2D5_slave 	# [10]  
#Block: 2 Pred: 8 Succ: 6 7 
.Lt_9_7:	# 0x2268
#<loop> Part of loop body line 579, head labeled .L_BB7_backward_2D5_slave
#<freq>
#<freq> BB:2 frequency = 2.12960 (heuristic)
#<freq> BB:2 => BB:6 probability = 0.12000
#<freq> BB:2 => BB:7 probability = 0.88000
#<freq>
	ldw	$22,32($sp)               	# [10]  reply
	cmpeq	$4,$22,$22              	# [14]  
#<bpre> branch predict taken
	beq	$22,.L_BB7_backward_2D5_slave 	# [15]  
#Block: 6 Pred: 2 7 8 Succ: 3 
.L_BB6_backward_2D5_slave:	# 0x2274
#<freq>
#<freq> BB:6 frequency = 0.75000 (heuristic)
#<freq>
#Block: 3 Pred: 6 1 Succ: 4 
.Lt_9_5:	# 0x2274
#<freq>
#<freq> BB:3 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	580	0
# 580  	backward_2D5_slave_kernel(info.X, info.A, info.B, info.M, info.N, info.L);
	ldw	$21,128($sp)              	# [33]  info+32
	ldw	$20,124($sp)              	# [34]  info+28
	ldw	$19,120($sp)              	# [35]  info+24
	ldl	$18,112($sp)              	# [36]  info+16
	ldl	$17,104($sp)              	# [37]  info+8
	ldl	$16,96($sp)               	# [38]  info
	bsr	$26,$ng..backward_2D5_slave_kernel 	# [39]  backward_2D5_slave_kernel
#Block: 4 Pred: 3 Succ: 
.L_BB4_backward_2D5_slave:	# 0x2290
#<freq>
#<freq> BB:4 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	581	0
# 581  	return;
	ldl	$26,0($sp)                	# [0]  return_address
	ldi	$sp,160($sp)              	# [0]  
	ret	$31,($26),1               	# [4]  
.L_CC_backward_2D5_slave:
#PU cycle count: 52.599201
	.end	backward_2D5_slave
	.section .text1

	# Program Unit: sequential_2D5_slave
	.align 4
	.ent	sequential_2D5_slave#
	.globl	sequential_2D5_slave
sequential_2D5_slave:	# 0x2290
	# reply = 32
	# COUNT = 36
	# dma_get = 64
	# info = 96
	# return_address = 0
#Block: 1 Pred: Succ: 2 5 
	.loc	1	586	0
# 582  }
# 583  
# 584  
# 585  void sequential_2D5_slave(void *_ptr)
# 586  {
.L_BB1_sequential_2D5_slave:	# 0x2290
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq> BB:1 => BB:2 probability = 0.28609
#<freq> BB:1 => BB:5 probability = 0.71391
#<freq>
	ldih	$gp,0($27)               	!gpdisp!10	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!10	# [1]  0
	
$ng..sequential_2D5_slave:
	ldi	$sp,-160($sp)             	# [2]  
	ldih	$0,_MYID($31)            	!tprelhi	# [2]  _MYID
	stl	$26,0($sp)                	# [3]  return_address
	.prologue
	.frame $30,160,$26,0
	.mask 0x4000000,-160
	ldw	$0,_MYID($0)              	!tprello	# [4]  _MYID
#<bpre> branch predict not taken
	beq	$0,.L_BB2_sequential_2D5_slave 	# [8]  
#Block: 5 Pred: 10 1 Succ: 
.Lt_10_8:	# 0x22b8
#<freq>
#<freq> BB:5 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	598	0
# 594  		WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(Info), COUNT);
# 595  		dma_wait(&reply, COUNT);
# 596  		sequential_2D5_slave_kernel(info.X, info.A, info.B, info.M, info.N, info.L);
# 597  	}
# 598  	return;
	ldl	$26,0($sp)                	# [0]  return_address
	ldi	$sp,160($sp)              	# [0]  
	ret	$31,($26),1               	# [4]  
#Block: 2 Pred: 1 Succ: 6 4 
.L_BB2_sequential_2D5_slave:	# 0x22c4
#<freq>
#<freq> BB:2 frequency = 0.28609 (heuristic)
#<freq> BB:2 => BB:6 probability = 0.75000
#<freq> BB:2 => BB:4 probability = 0.25000
#<freq>
	.loc	2	79	0
#	.body
#	.label_state 1
	ldw	$19,68($sp)               	# [0]  dma_get+4
#	.body
#	.restore $sp
	ornot	$31,$31,$20             	# [0]  
	srl	$20,60,$20                	# [1]  
#	.body
#	.copy_state 1
	mov	1,$8                      	# [1]  
	sll	$8,24,$8                  	# [2]  
	sll	$20,24,$20                	# [2]  
	.loc	2	67	0
	ldw	$17,64($sp)               	# [3]  dma_get
	.loc	2	79	0
	and	$8,$20,$8                 	# [3]  
	andnot	$19,$20,$19            	# [4]  
	.loc	2	85	0
	ldi	$18,-1($31)               	# [4]  
	ldih	$18,4096($18)            	# [5]  
	.loc	2	79	0
	or	$8,$19,$8                  	# [5]  
	.loc	2	85	0
	and	$8,$18,$8                 	# [6]  
	.loc	2	67	0
	mov	40,$6                     	# [6]  
	sll	$6,40,$5                  	# [7]  
	.loc	2	97	0
	sll	$6,44,$6                  	# [7]  
	srl	$8,20,$7                  	# [8]  
	.loc	2	67	0
	srl	$17,24,$17                	# [8]  
	sll	$17,24,$17                	# [9]  
	.loc	2	97	0
	sll	$7,20,$7                  	# [9]  
	srl	$6,44,$6                  	# [10]  
	.loc	2	67	0
	srl	$5,40,$5                  	# [10]  
	or	$5,$17,$5                  	# [11]  
	.loc	2	97	0
	or	$6,$7,$6                   	# [11]  
	.loc	2	73	0
	ldi	$7,32($sp)                	# [12]  reply
	.loc	2	97	0
	stw	$6,68($sp)                	# [12]  dma_get+4
	.loc	2	73	0
	sth	$7,72($sp)                	# [13]  dma_get+8
	.loc	1	594	0
	ldi	$4,96($sp)                	# [13]  info
	.loc	2	67	0
	stw	$5,64($sp)                	# [14]  dma_get
	.loc	2	103	0
	stw	$31,76($sp)               	# [15]  dma_get+12
	.loc	1	594	0
	vldd	$3,64($sp)               	# [16]  dma_get
	.loc	1	589	0
	stw	$31,32($sp)               	# [17]  reply
	.loc	1	590	0
	stw	$31,36($sp)               	# [18]  COUNT
	.loc	1	594	0
	dma	$3,$16,$4                 	# [20]  
	ldw	$2,36($sp)                	# [21]  COUNT
	addw	$2,1,$2                  	# [25]  
	stw	$2,36($sp)                	# [26]  COUNT
	.loc	1	595	0
	ldw	$4,36($sp)                	# [27]  COUNT
	ldw	$1,32($sp)                	# [28]  reply
	cmpeq	$4,$1,$1                	# [32]  
#<bpre> branch predict not taken
	bne	$1,.Lt_10_10              	# [33]  
#Block: 6 Pred: 2 Succ: 8 
.L_BB6_sequential_2D5_slave:	# 0x2368
#<freq>
#<freq> BB:6 frequency = 0.21457 (heuristic)
#<freq>
#Block: 8 Pred: 3 6 Succ: 7 9 
	.align	4
.L_BB8_sequential_2D5_slave:	# 0x2368
#<loop> Loop body line 595
#<loop> unrolled 3 times
#<freq>
#<freq> BB:8 frequency = 1.26269 (heuristic)
#<freq> BB:8 => BB:7 probability = 0.12000
#<freq> BB:8 => BB:9 probability = 0.88000
#<freq>
	ldw	$21,32($sp)               	# [0]  reply
	cmpeq	$4,$21,$21              	# [4]  
#<bpre> branch predict not taken
	bne	$21,.L_BB7_sequential_2D5_slave 	# [5]  
#Block: 9 Pred: 8 Succ: 7 3 
.L_BB9_sequential_2D5_slave:	# 0x2374
#<loop> Part of loop body line 595, head labeled .L_BB8_sequential_2D5_slave
#<loop> unrolled 3 times
#<freq>
#<freq> BB:9 frequency = 1.11117 (heuristic)
#<freq> BB:9 => BB:7 probability = 0.12000
#<freq> BB:9 => BB:3 probability = 0.88000
#<freq>
	ldw	$22,32($sp)               	# [5]  reply
	cmpeq	$4,$22,$22              	# [9]  
#<bpre> branch predict not taken
	bne	$22,.L_BB7_sequential_2D5_slave 	# [10]  
#Block: 3 Pred: 9 Succ: 7 8 
.Lt_10_12:	# 0x2380
#<loop> Part of loop body line 595, head labeled .L_BB8_sequential_2D5_slave
#<freq>
#<freq> BB:3 frequency = 0.97783 (heuristic)
#<freq> BB:3 => BB:7 probability = 0.12000
#<freq> BB:3 => BB:8 probability = 0.88000
#<freq>
	ldw	$23,32($sp)               	# [10]  reply
	cmpeq	$4,$23,$23              	# [14]  
#<bpre> branch predict taken
	beq	$23,.L_BB8_sequential_2D5_slave 	# [15]  
#Block: 7 Pred: 3 8 9 Succ: 4 
.L_BB7_sequential_2D5_slave:	# 0x238c
#<freq>
#<freq> BB:7 frequency = 0.21457 (heuristic)
#<freq>
#Block: 4 Pred: 7 2 Succ: 10 
.Lt_10_10:	# 0x238c
#<freq>
#<freq> BB:4 frequency = 0.28609 (heuristic)
#<freq>
	.loc	1	596	0
	ldw	$21,128($sp)              	# [38]  info+32
	ldw	$20,124($sp)              	# [39]  info+28
	ldw	$19,120($sp)              	# [40]  info+24
	ldl	$18,112($sp)              	# [41]  info+16
	ldl	$17,104($sp)              	# [42]  info+8
	ldl	$16,96($sp)               	# [43]  info
	bsr	$26,$ng..sequential_2D5_slave_kernel 	# [44]  sequential_2D5_slave_kernel
#Block: 10 Pred: 4 Succ: 5 
.L_BB10_sequential_2D5_slave:	# 0x23a8
#<freq>
#<freq> BB:10 frequency = 0.28609 (heuristic)
#<freq>
	br	$31,.Lt_10_8               	# [0]  
.L_CC_sequential_2D5_slave:
#PU cycle count: 24.430538
	.end	sequential_2D5_slave
	.section .text1

	# Program Unit: fact_2D5_slave
	.align 4
	.ent	fact_2D5_slave#
	.globl	fact_2D5_slave
fact_2D5_slave:	# 0x23a0
	# reply = 32
	# COUNT = 36
	# dma_get = 64
	# info = 96
	# return_address = 0
#Block: 1 Pred: Succ: 5 3 
	.loc	1	602	0
# 599  }
# 600  
# 601  void fact_2D5_slave(void *_ptr)
# 602  {
.L_BB1_fact_2D5_slave:	# 0x23a0
#<freq>
#<freq> BB:1 frequency = 1.00000 (heuristic)
#<freq> BB:1 => BB:5 probability = 0.75000
#<freq> BB:1 => BB:3 probability = 0.25000
#<freq>
	ldih	$gp,0($27)               	!gpdisp!11	# [0]  0
	ldi	$gp,0($gp)                	!gpdisp!11	# [1]  0
	
$ng..fact_2D5_slave:
	ldi	$sp,-160($sp)             	# [2]  
	.loc	2	79	0
	ornot	$31,$31,$19             	# [2]  
	.loc	1	602	0
	stl	$26,0($sp)                	# [3]  return_address
	.loc	2	79	0
	.prologue
	.frame $30,160,$26,0
	.mask 0x4000000,-160
	srl	$19,60,$19                	# [3]  
	ldw	$18,68($sp)               	# [4]  dma_get+4
	mov	1,$7                      	# [4]  
	sll	$7,24,$7                  	# [5]  
	sll	$19,24,$19                	# [5]  
	.loc	2	67	0
	ldw	$8,64($sp)                	# [6]  dma_get
	.loc	2	79	0
	and	$7,$19,$7                 	# [6]  
	.loc	2	85	0
	ldi	$17,-1($31)               	# [7]  
	.loc	2	67	0
	mov	40,$5                     	# [7]  
	.loc	2	79	0
	andnot	$18,$19,$18            	# [8]  
	.loc	2	85	0
	ldih	$17,4096($17)            	# [8]  
	.loc	2	79	0
	or	$7,$18,$7                  	# [9]  
	.loc	2	67	0
	sll	$5,40,$4                  	# [9]  
	.loc	2	85	0
	and	$7,$17,$7                 	# [10]  
	.loc	2	97	0
	sll	$5,44,$5                  	# [10]  
	srl	$7,20,$6                  	# [11]  
	.loc	2	67	0
	srl	$8,24,$8                  	# [11]  
	sll	$8,24,$8                  	# [12]  
	.loc	2	97	0
	sll	$6,20,$6                  	# [12]  
	srl	$5,44,$5                  	# [13]  
	.loc	2	67	0
	srl	$4,40,$4                  	# [13]  
	or	$4,$8,$4                   	# [14]  
	.loc	2	97	0
	or	$5,$6,$5                   	# [14]  
	.loc	2	73	0
	ldi	$6,32($sp)                	# [15]  reply
	.loc	2	97	0
	stw	$5,68($sp)                	# [15]  dma_get+4
	.loc	2	73	0
	sth	$6,72($sp)                	# [16]  dma_get+8
	.loc	1	608	0
# 604  	volatile int COUNT = 0;
# 605  	FInfo info;
# 606  	dma_desc dma_get;
# 607  	WXL_DMA_SET_NOSIZE(&dma_get, DMA_GET, &reply);
# 608  	WXL_DMA_NEW(dma_get, _ptr, &info, sizeof(FInfo), COUNT);
	ldi	$3,96($sp)                	# [16]  info
	.loc	2	67	0
	stw	$4,64($sp)                	# [17]  dma_get
	.loc	2	103	0
	stw	$31,76($sp)               	# [18]  dma_get+12
	.loc	1	608	0
	vldd	$2,64($sp)               	# [19]  dma_get
	.loc	1	603	0
	stw	$31,32($sp)               	# [20]  reply
	.loc	1	604	0
	stw	$31,36($sp)               	# [21]  COUNT
	.loc	1	608	0
	dma	$2,$16,$3                 	# [23]  
	ldw	$1,36($sp)                	# [24]  COUNT
	addw	$1,1,$1                  	# [28]  
	stw	$1,36($sp)                	# [29]  COUNT
	.loc	1	609	0
# 609  	dma_wait(&reply, COUNT);
	ldw	$4,36($sp)                	# [30]  COUNT
	ldw	$0,32($sp)                	# [31]  reply
	cmpeq	$4,$0,$0                	# [35]  
#<bpre> branch predict not taken
	bne	$0,.Lt_11_5               	# [36]  
#Block: 5 Pred: 1 Succ: 7 
.L_BB5_fact_2D5_slave:	# 0x2460
#<freq>
#<freq> BB:5 frequency = 0.75000 (heuristic)
#<freq>
#Block: 7 Pred: 2 5 Succ: 6 8 
.L_BB7_fact_2D5_slave:	# 0x2460
#<loop> Loop body line 609
#<loop> unrolled 3 times
#<freq>
#<freq> BB:7 frequency = 2.75000 (heuristic)
#<freq> BB:7 => BB:6 probability = 0.12000
#<freq> BB:7 => BB:8 probability = 0.88000
#<freq>
	ldw	$20,32($sp)               	# [0]  reply
	cmpeq	$4,$20,$20              	# [4]  
#<bpre> branch predict not taken
	bne	$20,.L_BB6_fact_2D5_slave 	# [5]  
#Block: 8 Pred: 7 Succ: 6 2 
.L_BB8_fact_2D5_slave:	# 0x246c
#<loop> Part of loop body line 609, head labeled .L_BB7_fact_2D5_slave
#<loop> unrolled 3 times
#<freq>
#<freq> BB:8 frequency = 2.42000 (heuristic)
#<freq> BB:8 => BB:6 probability = 0.12000
#<freq> BB:8 => BB:2 probability = 0.88000
#<freq>
	ldw	$21,32($sp)               	# [5]  reply
	cmpeq	$4,$21,$21              	# [9]  
#<bpre> branch predict not taken
	bne	$21,.L_BB6_fact_2D5_slave 	# [10]  
#Block: 2 Pred: 8 Succ: 6 7 
.Lt_11_7:	# 0x2478
#<loop> Part of loop body line 609, head labeled .L_BB7_fact_2D5_slave
#<freq>
#<freq> BB:2 frequency = 2.12960 (heuristic)
#<freq> BB:2 => BB:6 probability = 0.12000
#<freq> BB:2 => BB:7 probability = 0.88000
#<freq>
	ldw	$22,32($sp)               	# [10]  reply
	cmpeq	$4,$22,$22              	# [14]  
#<bpre> branch predict taken
	beq	$22,.L_BB7_fact_2D5_slave 	# [15]  
#Block: 6 Pred: 2 7 8 Succ: 3 
.L_BB6_fact_2D5_slave:	# 0x2484
#<freq>
#<freq> BB:6 frequency = 0.75000 (heuristic)
#<freq>
#Block: 3 Pred: 6 1 Succ: 4 
.Lt_11_5:	# 0x2484
#<freq>
#<freq> BB:3 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	610	0
# 610  	fact_2D5_slave_kernel(info.LB, info.UB, info.A, info.M, info.N, info.L);
	ldw	$21,128($sp)              	# [33]  info+32
	ldw	$20,124($sp)              	# [34]  info+28
	ldw	$19,120($sp)              	# [35]  info+24
	ldl	$18,112($sp)              	# [36]  info+16
	ldl	$17,104($sp)              	# [37]  info+8
	ldl	$16,96($sp)               	# [38]  info
	bsr	$26,$ng..fact_2D5_slave_kernel 	# [39]  fact_2D5_slave_kernel
#Block: 4 Pred: 3 Succ: 
.L_BB4_fact_2D5_slave:	# 0x24a0
#<freq>
#<freq> BB:4 frequency = 1.00000 (heuristic)
#<freq>
	.loc	1	611	0
# 611  	return;
	ldl	$26,0($sp)                	# [0]  return_address
	ldi	$sp,160($sp)              	# [0]  
	ret	$31,($26),1               	# [4]  
.L_CC_fact_2D5_slave:
#PU cycle count: 52.599201
	.end	fact_2D5_slave
	.section .tdata
	.align 0
	.section .tdata_local_fix
	.align 5
	.section .text1
	.align 4
	.section .rodata
	.align 3
#	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x37, 0x02, 0x00, 0x00, 0x02, 0x00
	.long	.debug_abbrev
	.byte	0x08, 0x01, 0x66, 0x75, 0x6e, 0x63, 0x5f, 0x32
	.byte	0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65
	.byte	0x2e, 0x63, 0x00, 0x2d, 0x4f, 0x33, 0x00, 0x01
	.byte	0x00
	.long	.debug_line
	.byte	0x02, 0x01, 0x14, 0x6d, 0x61, 0x67, 0x69, 0x63
	.byte	0x5f, 0x74, 0x6f, 0x75, 0x63, 0x68, 0x5f, 0x6c
	.byte	0x6f, 0x6e, 0x67, 0x5f, 0x6c, 0x6f, 0x6e, 0x67
	.byte	0x00, 0x01, 0x03, 0x92, 0x1e, 0x20
	.quad	.L_BB1_magic_touch_long_long
	.quad	.L_CC_magic_touch_long_long
	.byte	0x02, 0x01, 0x19, 0x73, 0x74, 0x65, 0x73, 0x74
	.byte	0x00, 0x01, 0x03, 0x92, 0x1e, 0x20
	.quad	.L_BB1_stest
	.quad	.L_CC_stest
	.byte	0x03, 0x01, 0x21, 0x73, 0x65, 0x71, 0x75, 0x65
	.byte	0x6e, 0x74, 0x69, 0x61, 0x6c, 0x5f, 0x32, 0x44
	.byte	0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65, 0x5f
	.byte	0x6b, 0x65, 0x72, 0x6e, 0x65, 0x6c, 0x00, 0x01
	.byte	0x01, 0x03, 0x92, 0x0f, 0x00
	.quad	.L_BB1_sequential_2D5_slave_kernel
	.quad	.L_CC_sequential_2D5_slave_kernel
	.byte	0x04, 0x01, 0x47, 0x73, 0x6c, 0x61, 0x76, 0x65
	.byte	0x5f, 0x43, 0x61, 0x6c, 0x5f, 0x49, 0x44, 0x00
	.byte	0x03, 0x92, 0x1e, 0x20
	.quad	.L_BB1_slave_Cal_ID
	.quad	.L_CC_slave_Cal_ID
	.byte	0x02, 0x01, 0x80, 0x43, 0x61, 0x6c, 0x5f, 0x49
	.byte	0x44, 0x5f, 0x52, 0x4d, 0x00, 0x01, 0x03, 0x92
	.byte	0x1e, 0x20
	.quad	.L_BB1_Cal_ID_RM
	.quad	.L_CC_Cal_ID_RM
	.byte	0x03, 0x01, 0xb9, 0x66, 0x6f, 0x72, 0x77, 0x61
	.byte	0x72, 0x64, 0x5f, 0x32, 0x44, 0x35, 0x5f, 0x73
	.byte	0x6c, 0x61, 0x76, 0x65, 0x5f, 0x6b, 0x65, 0x72
	.byte	0x6e, 0x65, 0x6c, 0x00, 0x01, 0x01, 0x03, 0x92
	.byte	0x0f, 0x00
	.quad	.L_BB1_forward_2D5_slave_kernel
	.quad	.L_CC_forward_2D5_slave_kernel
	.byte	0x05, 0x01, 0x21, 0x01, 0x62, 0x61, 0x63, 0x6b
	.byte	0x77, 0x61, 0x72, 0x64, 0x5f, 0x32, 0x44, 0x35
	.byte	0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65, 0x5f, 0x6b
	.byte	0x65, 0x72, 0x6e, 0x65, 0x6c, 0x00, 0x01, 0x01
	.byte	0x03, 0x92, 0x0f, 0x00
	.quad	.L_BB1_backward_2D5_slave_kernel
	.quad	.L_CC_backward_2D5_slave_kernel
	.byte	0x05, 0x01, 0x8a, 0x01, 0x66, 0x61, 0x63, 0x74
	.byte	0x5f, 0x32, 0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61
	.byte	0x76, 0x65, 0x5f, 0x6b, 0x65, 0x72, 0x6e, 0x65
	.byte	0x6c, 0x00, 0x01, 0x01, 0x03, 0x92, 0x0f, 0x00
	.quad	.L_BB1_fact_2D5_slave_kernel
	.quad	.L_CC_fact_2D5_slave_kernel
	.byte	0x05, 0x01, 0x2f, 0x02, 0x66, 0x6f, 0x72, 0x77
	.byte	0x61, 0x72, 0x64, 0x5f, 0x32, 0x44, 0x35, 0x5f
	.byte	0x73, 0x6c, 0x61, 0x76, 0x65, 0x00, 0x01, 0x01
	.byte	0x04, 0x92, 0x1e, 0xa0, 0x01
	.quad	.L_BB1_forward_2D5_slave
	.quad	.L_CC_forward_2D5_slave
	.byte	0x05, 0x01, 0x3c, 0x02, 0x62, 0x61, 0x63, 0x6b
	.byte	0x77, 0x61, 0x72, 0x64, 0x5f, 0x32, 0x44, 0x35
	.byte	0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65, 0x00, 0x01
	.byte	0x01, 0x04, 0x92, 0x1e, 0xa0, 0x01
	.quad	.L_BB1_backward_2D5_slave
	.quad	.L_CC_backward_2D5_slave
	.byte	0x05, 0x01, 0x4a, 0x02, 0x73, 0x65, 0x71, 0x75
	.byte	0x65, 0x6e, 0x74, 0x69, 0x61, 0x6c, 0x5f, 0x32
	.byte	0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65
	.byte	0x00, 0x01, 0x01, 0x04, 0x92, 0x1e, 0xa0, 0x01
	.quad	.L_BB1_sequential_2D5_slave
	.quad	.L_CC_sequential_2D5_slave
	.byte	0x05, 0x01, 0x5a, 0x02, 0x66, 0x61, 0x63, 0x74
	.byte	0x5f, 0x32, 0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61
	.byte	0x76, 0x65, 0x00, 0x01, 0x01, 0x04, 0x92, 0x1e
	.byte	0xa0, 0x01
	.quad	.L_BB1_fact_2D5_slave
	.quad	.L_CC_fact_2D5_slave
	.byte	0x00, 0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x2c, 0x00, 0x00, 0x00, 0x02, 0x00
	.long	.debug_info
	.byte	0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.quad	.L_BB1_magic_touch_long_long
	.quad	.L_CC_fact_2D5_slave - .L_BB1_magic_touch_long_long
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x0e, 0x01, 0x00, 0x00, 0x02, 0x00
	.long	.debug_info
	.byte	0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte	0x6d, 0x61, 0x67, 0x69, 0x63, 0x5f, 0x74, 0x6f
	.byte	0x75, 0x63, 0x68, 0x5f, 0x6c, 0x6f, 0x6e, 0x67
	.byte	0x5f, 0x6c, 0x6f, 0x6e, 0x67, 0x00, 0x55, 0x00
	.byte	0x00, 0x00, 0x73, 0x74, 0x65, 0x73, 0x74, 0x00
	.byte	0x73, 0x00, 0x00, 0x00, 0x73, 0x65, 0x71, 0x75
	.byte	0x65, 0x6e, 0x74, 0x69, 0x61, 0x6c, 0x5f, 0x32
	.byte	0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65
	.byte	0x5f, 0x6b, 0x65, 0x72, 0x6e, 0x65, 0x6c, 0x00
	.byte	0xcc, 0x00, 0x00, 0x00, 0x43, 0x61, 0x6c, 0x5f
	.byte	0x49, 0x44, 0x5f, 0x52, 0x4d, 0x00, 0xee, 0x00
	.byte	0x00, 0x00, 0x66, 0x6f, 0x72, 0x77, 0x61, 0x72
	.byte	0x64, 0x5f, 0x32, 0x44, 0x35, 0x5f, 0x73, 0x6c
	.byte	0x61, 0x76, 0x65, 0x5f, 0x6b, 0x65, 0x72, 0x6e
	.byte	0x65, 0x6c, 0x00, 0x20, 0x01, 0x00, 0x00, 0x62
	.byte	0x61, 0x63, 0x6b, 0x77, 0x61, 0x72, 0x64, 0x5f
	.byte	0x32, 0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76
	.byte	0x65, 0x5f, 0x6b, 0x65, 0x72, 0x6e, 0x65, 0x6c
	.byte	0x00, 0x54, 0x01, 0x00, 0x00, 0x66, 0x61, 0x63
	.byte	0x74, 0x5f, 0x32, 0x44, 0x35, 0x5f, 0x73, 0x6c
	.byte	0x61, 0x76, 0x65, 0x5f, 0x6b, 0x65, 0x72, 0x6e
	.byte	0x65, 0x6c, 0x00, 0x84, 0x01, 0x00, 0x00, 0x66
	.byte	0x6f, 0x72, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x32
	.byte	0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65
	.byte	0x00, 0xb1, 0x01, 0x00, 0x00, 0x62, 0x61, 0x63
	.byte	0x6b, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x32, 0x44
	.byte	0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65, 0x00
	.byte	0xdf, 0x01, 0x00, 0x00, 0x73, 0x65, 0x71, 0x75
	.byte	0x65, 0x6e, 0x74, 0x69, 0x61, 0x6c, 0x5f, 0x32
	.byte	0x44, 0x35, 0x5f, 0x73, 0x6c, 0x61, 0x76, 0x65
	.byte	0x00, 0x0f, 0x02, 0x00, 0x00, 0x66, 0x61, 0x63
	.byte	0x74, 0x5f, 0x32, 0x44, 0x35, 0x5f, 0x73, 0x6c
	.byte	0x61, 0x76, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_abbrev, "", "progbits"
	.align	0
	.byte	0x01, 0x11, 0x01, 0x03, 0x08, 0x25, 0x08, 0x13
	.byte	0x0b, 0x42, 0x0b, 0x10, 0x06, 0x00, 0x00, 0x02
	.byte	0x2e, 0x00, 0x3a, 0x0b, 0x3b, 0x0b, 0x03, 0x08
	.byte	0x3f, 0x0c, 0x40, 0x0a, 0x11, 0x01, 0x12, 0x01
	.byte	0x00, 0x00, 0x03, 0x2e, 0x00, 0x3a, 0x0b, 0x3b
	.byte	0x0b, 0x03, 0x08, 0x3f, 0x0c, 0x8b, 0x40, 0x0c
	.byte	0x40, 0x0a, 0x11, 0x01, 0x12, 0x01, 0x00, 0x00
	.byte	0x04, 0x2e, 0x00, 0x3a, 0x0b, 0x3b, 0x0b, 0x03
	.byte	0x08, 0x40, 0x0a, 0x11, 0x01, 0x12, 0x01, 0x00
	.byte	0x00, 0x05, 0x2e, 0x00, 0x3a, 0x0b, 0x3b, 0x05
	.byte	0x03, 0x08, 0x3f, 0x0c, 0x8b, 0x40, 0x0c, 0x40
	.byte	0x0a, 0x11, 0x01, 0x12, 0x01, 0x00, 0x00
	.ident	"#SWCC Version 5.296-53 : func_2D5_slave.c compiled with : -TENV:PIC -m1 -O3 -msimd "
