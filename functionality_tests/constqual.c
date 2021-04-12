#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void foo(_Array_ptr<char> c : count(len), int len) {
}

int main(int argc, char** argv) {
	_Array_ptr<const char> s1 : count(5) = _Assume_bounds_cast<_Array_ptr<char>>(
		malloc(5), count(5)
	);

	foo(s1, 5);
	return 0;
}

