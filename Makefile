CC = /home/jedi/checkc/build/bin/clang

test0: test0.c
	$(CC) -o test0 test0.c

test1: test1.c
	$(CC) -o test1 test1.c

test2: test2.c
	$(CC) -g -o test2 test2.c

test3: test3.c
	$(CC) -g -o test3 test3.c

test4: test3.c
	$(CC) -g -o test4 test4.c

clean:
	-rm test0 test1 test2 test3
