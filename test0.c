#include <stdchecked.h>
#include <stdio_checked.h>
#include <string_checked.h>
#include <stdlib_checked.h>

/**
 * test0: determining the bound with array arithmetics.
 * conclusion is that it supports checking with static values.
 * test1 would show that it fails for dynamic length pointer based arrays
 */
checked int main(int argc, char** argv : itype(array_ptr<nt_array_ptr<char>>) count(argc)) {
  int a checked[5];
  int b checked[4];
  memset(a, 5, sizeof(int) * 5);
  // will not complain since 4 < 5 which can be checked statically.
  memcpy<int>(b, a, sizeof(int) * 4);
  puts("Value of b[3]: ");
  putchar(b[3] + '0');
  putchar('\n');

  static const int c_len = 5;
  static const int d_len = 4;

  int c checked[c_len];
  int d checked[d_len];
  memset(c, 5, sizeof(int) * 5);
  // will complain since 4 < 5 cannot be checked statically, even though the variables are all static values
  memcpy<int>(d, c, sizeof(int) * d_len);
  puts("Value of d[3]: ");
  putchar(d[3] + '0');
  putchar('\n');
  return 0;
}
