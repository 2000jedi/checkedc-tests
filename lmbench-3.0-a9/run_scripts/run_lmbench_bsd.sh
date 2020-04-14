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
LMBENCH_DIR=$HOME/lmbench-3.0-a9/bin/amd64-freebsd12.1

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
head --bytes=1073741824 /dev/urandom > $DUMMY
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


echo "Running benchmark: UDP BW"
$LMBENCH_DIR/bw_udp -s
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwUDP_$TIMESTAMP
    $LMBENCH_DIR/bw_udp -W $WARM -N $PIPE_REPS 127.0.0.1 2>&1 | tee -a $OUTFILE
done
kill `ps -a | grep bw_udp | sed 's/ /\n/' | head -1`
echo "Done with benchmark: UDP BW"

