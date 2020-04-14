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

# echo "Generating Random Content File: $DUMMY"
# rm -rf $DUMMY
# head --bytes=1073741824 /dev/urandom > $DUMMY
rm -rf $FSDIR
mkdir -p $FSDIR
cd $FSDIR
echo "Benchmark started on: $TIMESTAMP"


echo "Running benchmark: UDP BW"
$LMBENCH_DIR/bw_udp -s
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwUDP_$TIMESTAMP
    $LMBENCH_DIR/bw_udp -W $WARM -N $PIPE_REPS 127.0.0.1 2>&1 | tee -a $OUTFILE
done
kill `ps -a | grep bw_udp | sed 's/ /\n/' | head -1`
echo "Done with benchmark: UDP BW"

echo "Running benchmark: TCP BW"
$LMBENCH_DIR/bw_tcp -s
for i in $(seq 1 $NUM_ROUNDS)
do
    OUTFILE=$FSDIR/bwTCP_$TIMESTAMP
    $LMBENCH_DIR/bw_tcp -W $WARM -N $PIPE_REPS 127.0.0.1 2>&1 | tee -a $OUTFILE
done
kill `ps -a | grep bw_tcp | sed 's/ /\n/' | head -1`
echo "Done with benchmark: TCP BW"

