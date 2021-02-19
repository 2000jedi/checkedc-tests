CC = /opt/checkedc/build/bin/clang
CFLAGS = -O0 -g -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -Wno-nullability-completeness

test_call: test_call.c
	$(CC) $(CFLAGS) -o test_call test_call.c

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

test_dynamic: test_dynamic.c
	$(CC) $(CFLAGS) -o test_dynamic test_dynamic.c

clean:
	-rm test0 test1 test2 test3 test4 test_dynamic test_call
	-rm -r *.o *.dSYM
