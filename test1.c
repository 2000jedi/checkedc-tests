#include <stdchecked.h>
#include <stdio_checked.h>
#include <string_checked.h>
#include <stdlib_checked.h>

/**
 * test1: determining the bound with pointer arithmetics.
 * the conclusion is that checked c cannot support bound checking with pointer arithmetics.
 */
checked int main(int argc, char** argv : itype(array_ptr<nt_array_ptr<char>>) count(argc)) {
  int a_len = 5;
  int b_len = 4;
  array_ptr<int> a : count(a_len) = malloc<int>(sizeof(int) * a_len);
  array_ptr<int> b : count(b_len) = malloc<int>(sizeof(int) * b_len);
  memset(a, 5, sizeof(int) * a_len);
  memcpy<int>(b, a, sizeof(int) * b_len);
  putchar(b[3] + '0');
  putchar('\n');
  return 0;
}
