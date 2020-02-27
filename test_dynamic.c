//#include <stdchecked.h>
//#include <stdio_checked.h>
//#include <string_checked.h>
//#include <stdlib_checked.h>
#include <stdio.h>
#include <string.h>
/* Turn off the checked scope for main fucntion */
// #pragma CHECKED_SCOPE OFF

#undef memset
void *memset(void * dest : byte_count(n),
             int c,
             size_t n) : bounds(dest, (_Array_ptr<char>)dest + n);

int foo(int * checked_array : itype(_Array_ptr<int>) count(len), size_t len){
	puts("Hello!");
	return 1;
}

/*
  This test shows that neither _Dynamic_bounds_cast nor the _Assume_bounds_cast can be used on our code refactor
  Have not figured out why does this bug happen
 */
int main(int argc, char** argv) {
  int a _Checked[5];
  size_t l = 4;
  
  memset(a, 5, sizeof(int) * 5);
  
  /* Directly using bounds cast inside function does not work */
  //#if 0
  foo(_Dynamic_bounds_cast<_Array_ptr<int>>(a, count(l)), l);
  foo(_Assume_bounds_cast<_Array_ptr<int>>(a, count(l)), l);
  //#endif
  
  /* Assigning to a new variable does not work */
  //#if 0
  _Array_ptr<int> b : count(l) = _Dynamic_bounds_cast<_Array_ptr<int>>(a, count(l));
  _Array_ptr<int> c : count(l) = _Assume_bounds_cast<_Array_ptr<int>>(a, count(l));
  foo(b, l);
  foo(c, l);
  //#endif
  
  return 0;
}

