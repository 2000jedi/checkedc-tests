#include <stdlib.h>
#include <stdio.h>
#include <string.h>

_Unchecked void pc(char p) {
  putchar(p);
}

_Checked int foo(_Array_ptr<int> checked_array : count(len), size_t len){
	pc('F');
  pc('o');
  pc('o');
  pc(':');
  pc(' ');
  for (int i = 0; i < len; ++i)
    pc(checked_array[i] + '0');
  pc('\n');
  return 1;
}

/*
  This test shows that neither _Dynamic_bounds_cast nor the _Assume_bounds_cast can be used on our code refactor
  Have not figured out why does this bug happen
 */
int main(int argc, char** argv) {
  int a _Checked[5] = {5, 4, 3, 2, 1};
  size_t l = 4;
  
  /* Directly using bounds cast inside function does not work */
  #if 0
  foo(_Dynamic_bounds_cast<_Array_ptr<int>>(a, count(l)), l);
  #endif
  
  /* Assigning to a new variable does work */
  #if 1
  _Array_ptr<int> b : count(l) = _Dynamic_bounds_cast<_Array_ptr<int>>(a, count(l));
  foo(b, l);
  #endif
	
  /* Although not shown in the test, cast of Checked C behaves the same on _Assume_bounds_cast */
  
  return 0;
}

