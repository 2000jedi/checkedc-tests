/*
 * Test Call Expression Constraints
 * This file contains the minimal code that triggers the error
 * > call expression not allowed in argument for parameter used in function return bounds 
 * > expression
 * 
 * Solution to this problem:
 * 1. modify clang to ignore this error
 * 2. create a mask macro that creates a temporary variable (#define FIX to enable the fix)
 */

#include "stdchecked.h"

checked array_ptr<char> foo(char* str : itype(array_ptr<char>) count(s), int s) : count(s) {
  return str;
}

#ifdef FIX
#define foo(x, y) int __temp_v = y; foo(x, __temp_v);
#endif

int bar() {
  return 5;
}

int main(int argc, char** argv) {
  foo("hello, world", bar());
}
