#!/bin/sh

# Number of repetitions given to lmbench
REPS=100
PIPE_REPS=10
PGF_REPS=100
# Number of warmup reps
WARM=10

# Number of benchmarking runs
NUM_ROUNDS=10

# Location of LMBench
# LMBENCH_DIR=$HOME/checekdc-tests/lmbench-3.0-a9/bin/amd64-freebsd12.1
LMBENCH_DIR="/home/yyang16/checkedc-tests/lmbench-3.0-a9/bin/amd64-freebsd12.1"
# Location of directories and files needed by test
TMPDIR=$HOME/tmp

# Dummy file with random contents
DUMMY=$TMPDIR/random.file

#output file directory
FSDIR=$HOME/checkedbsd-benchmarks/lmbench

# Capture date
TIMESTAMP=$(date '+%Y%m%d_%H%M%S');

# Disable core dumps because lmbench (particularly the fork+exec test) tends
# to creash when they're enabled. (We haven't yet figured out why, but it
# seems to run fine with dumps disabled.)
ulimit -c 0

echo "Generating Random Content File: $DUMMY"
rm -rf $DUMMY
head --bytes=1G /dev/urandom > $DUMMY
rm -rf $FSDIR
mkdir -p $FSDIR
cd $FSDIR
echo "Benchmark started on: $TIMESTAMP"

echo "Running benchmark: Syscalls"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/nullSyscall_$TIMESTAMP
    $LMBENCH_DIR/lat_syscall -W $WARM -N $REPS null 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Syscalls"

echo "Running benchmark: Fork+Exit"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/forkExit_$TIMESTAMP
    $LMBENCH_DIR/lat_proc -W $WARM -N $REPS fork 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Fork+Exit"


echo "Running benchmark: Fork+Exec"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/forkExec_$TIMESTAMP
    $LMBENCH_DIR/lat_proc -W $WARM -N $REPS exec 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Fork+Exec"


echo "Running benchmark: Fork+Shell"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/forkShell_$TIMESTAMP
    cp $LMBENCH_DIR/hello /tmp
    $LMBENCH_DIR/lat_proc -W $WARM -N $REPS shell 2>&1 | tee -a $OUTFILE
    rm -f /tmp/hello
done
echo "Done with benchmark: Fork+Shell"


echo "Running benchmark: MMap"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/mmap_$TIMESTAMP
    $LMBENCH_DIR/lat_mmap -W $WARM -N $REPS 8m $DUMMY 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: MMap"


echo "Running benchmark: Pagefaults"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/pgFault_$TIMESTAMP
    $LMBENCH_DIR/lat_pagefault -W $WARM -N $PGF_REPS $DUMMY 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Pagefaults"


echo "Running benchmark: Open/Close"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/openClose_$TIMESTAMP
    $LMBENCH_DIR/lat_syscall -W $WARM -N $REPS open 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Open/Close"


echo "Running benchmark: Read"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/read_$TIMESTAMP
    $LMBENCH_DIR/lat_syscall -W $WARM -N $REPS read 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Read"


echo "Running benchmark: Write"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/write_$TIMESTAMP
    $LMBENCH_DIR/lat_syscall -W $WARM -N $REPS write 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Write"


echo "Running benchmark: Stat"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/stat_$TIMESTAMP
    $LMBENCH_DIR/lat_syscall -W $WARM -N $REPS stat 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Stat"


echo "Running benchmark: Fstat"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/fstat_$TIMESTAMP
    $LMBENCH_DIR/lat_syscall -W $WARM -N $REPS fstat 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Fstat"


echo "Running benchmark: Context Switch"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/contextSwitch_$TIMESTAMP
    $LMBENCH_DIR/lat_ctx -W $WARM -N $REPS 2 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Context Switch"


echo "Running benchmark: SigHandler Install"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/sigInstall_$TIMESTAMP
    $LMBENCH_DIR/lat_sig -W $WARM -N $REPS install 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: SigHandler Install"


echo "Running benchmark: SigHandler Delivery"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/sigDeliver_$TIMESTAMP
    $LMBENCH_DIR/lat_sig -W $WARM -N $REPS catch 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: SigHandler Delivery"


echo "Running benchmark: Protection Fault"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/protFault_$TIMESTAMP
    $LMBENCH_DIR/lat_sig -W $WARM -N $REPS prot $DUMMY 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Protection Fault"


echo "Running benchmark: Select 200fd"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/select_$TIMESTAMP
    $LMBENCH_DIR/lat_select -W $WARM -N $REPS file 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Select 200fd"


echo "Running benchmark: Select 10fd"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/select10fd_$TIMESTAMP
    $LMBENCH_DIR/lat_select -n 10 -W $WARM -N $REPS file 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Select 10fd"


echo "Running benchmark: Select 100tcp"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/select100tcp_$TIMESTAMP
    $LMBENCH_DIR/lat_select -n 100 -W $WARM -N $REPS tcp 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Select 100tcp"


echo "Running benchmark: Fcntl Lock"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/fcntl_$TIMESTAMP
    $LMBENCH_DIR/lat_fcntl -W $WARM -N $REPS 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Fcntl Lock"


echo "Running benchmark: Pipe"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/pipe_$TIMESTAMP
    $LMBENCH_DIR/lat_pipe -W $WARM -N $PIPE_REPS 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Pipe"


echo "Running benchmark: Unix Socket"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/unixSock_$TIMESTAMP
    $LMBENCH_DIR/lat_unix -W $WARM -N $PIPE_REPS 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Unix Socket"


echo "Running benchmark: UDP Socket"
$LMBENCH_DIR/lat_udp -s
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/udpSock_$TIMESTAMP
    $LMBENCH_DIR/lat_udp -W $WARM -N $PIPE_REPS 127.0.0.1 2>&1 | tee -a $OUTFILE
done
kill `ps -a | grep lat_udp | sed 's/ /\n/' | head -1`
echo "Done with benchmark: UDP Socket"


echo "Running benchmark: TCP Socket"
$LMBENCH_DIR/lat_tcp -s
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/tcpSock_$TIMESTAMP
    $LMBENCH_DIR/lat_tcp -W $WARM -N $PIPE_REPS 127.0.0.1 2>&1 | tee -a $OUTFILE
done
kill `ps -a | grep lat_tcp | sed 's/ /\n/' | head -1`
echo "Done with benchmark: TCP Socket"


echo "Running benchmark: Pipe BW"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwPipe_$TIMESTAMP
    $LMBENCH_DIR/bw_pipe -W $WARM -N $PIPE_REPS 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Pipe BW"


echo "Running benchmark: Unix BW"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwUnix_$TIMESTAMP
    $LMBENCH_DIR/bw_unix -W $WARM -N $PIPE_REPS 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: Unix BW"


echo "Running benchmark: MMAP BW"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwMmap_$TIMESTAMP
    $LMBENCH_DIR/bw_mmap_rd -W $WARM -N $PIPE_REPS 8m mmap_only $DUMMY 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: MMAP BW"


echo "Running benchmark: File BW"
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwFile_$TIMESTAMP
    $LMBENCH_DIR/bw_file_rd -W $WARM -N $PIPE_REPS 8m io_only $DUMMY 2>&1 | tee -a $OUTFILE
done
echo "Done with benchmark: File BW"


echo "Running benchmark: TCP BW"
$LMBENCH_DIR/bw_tcp -s
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwTCP_$TIMESTAMP
    $LMBENCH_DIR/bw_tcp -W $WARM -N $PIPE_REPS 127.0.0.1 2>&1 | tee -a $OUTFILE
done
kill `ps -a | grep bw_tcp | sed 's/ /\n/' | head -1`
echo "Done with benchmark: TCP BW"
