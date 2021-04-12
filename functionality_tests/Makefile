CC = /opt/checkedc/build/bin/clang
CFLAGS = -O0 -g -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -Wno-nullability-completeness

constqual: constqual.c
	$(CC) $(CFLAGS) -o constqual constqual.c

call: call.c
	$(CC) $(CFLAGS) -o call call.c

test0: test0.c
	$(CC) $(CFLAGS) -o test0 test0.c

test1: test1.c
	$(CC) $(CFLAGS) -o test1 test1.c

test2: test2.c
	$(CC) $(CFLAGS) -o test2 test2.c

test3: test3.c
	$(CC) $(CFLAGS) -o test3 test3.c

test4: test4.c
	$(CC) $(CFLAGS) -o test4 test4.c

dynamic: dynamic.c
	$(CC) $(CFLAGS) -o dynamic dynamic.c

clean:
	-rm test0 test1 test2 test3 test4 dynamic call constqual
	-rm -r *.o *.dSYM
