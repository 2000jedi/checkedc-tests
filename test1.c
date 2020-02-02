#include <stdchecked.h>
#include <stdio_checked.h>
#include <string_checked.h>
#include <stdlib_checked.h>

/**
 * test1: determining the bound with pointer arithmetics.
 * the conclusion is that checked c cannot support bound checking with pointer arithmetics.
 */
checked int main(int argc, char** argv : itype(array_ptr<nt_array_ptr<char>>) count(argc)) {
  int a_len = 6;
  int b_len = 5;
  // use byte_count here, count would cause problem
  array_ptr<int> a : byte_count(sizeof(int) * a_len) = malloc<int>(sizeof(int) * a_len);
  array_ptr<int> b : byte_count(sizeof(int) * b_len) = malloc<int>(sizeof(int) * b_len);
  memset(a, 5, sizeof(int) * a_len);
  // must cause compiler complaint here, static check does not work here
  memcpy<int>(b, a, sizeof(int) * a_len); // should cause an error here, either dynamically or statically, but not.
  putchar(b[3] + '0');
  putchar('\n');
  unchecked {
    int *c = (int*) b;
    putchar(c[5] + '0');
    putchar('\n');
    // this indicates that there is no dynamic checking, memcpy succeeds and overflows
    // thus, it is unsuitable to check without dynamic_check function to ensure bound safety
  }
  return 0;
}
