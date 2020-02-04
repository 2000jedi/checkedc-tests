#include <stdchecked.h>
#include <stdio_checked.h>
#include <string_checked.h>
#include <stdlib_checked.h>

checked static void memcpy_checked(
  int *dst : byte_count(dst_len),
  int *src : byte_count(src_len),
  size_t dst_len, 
  size_t src_len, 
  size_t n
  ) {
    dynamic_check(dst_len >= n);
    dynamic_check(src_len >= n);
    unchecked {
      memcpy<int>(dst, src, n);
    }
  }

/**
 * test2: solution for test 1, manually adding dynamic checks.
 */
checked int main(int argc, char** argv : itype(array_ptr<nt_array_ptr<char>>) count(argc)) {
  int a_len = 6;
  int b_len = 5;
  // use byte_count here, count would cause problem
  array_ptr<int> a : byte_count(sizeof(int) * a_len) = malloc<int>(sizeof(int) * a_len);
  a_len = 10;
  array_ptr<int> b : byte_count(sizeof(int) * b_len) = malloc<int>(sizeof(int) * b_len);
  memset(a, 5, sizeof(int) * a_len);
  // must cause compiler complaint here, static check does not work here
  // compiler will complain regardless of values for `a_len` and `b_len`
  memcpy_checked(b, a, sizeof(int) * b_len, sizeof(int) * a_len, sizeof(int) * b_len); // should cause an error here, either dynamically or statically, but not.
  putchar(b[3] + '0');
  putchar('\n');
  unchecked {
    int *c = (int*) b;
    putchar(c[5] + '0');
    putchar('\n');
    // this indicates that there is no dynamic checking, memcpy succeeds and overflows
    // thus, it is unsuitable to check without dynamic_check function to ensure bound safety
  }
  // an alternative solution to this problem here would to change the logic of memcpy, memset, etc.
  // add dynamic bound checking for memcpy would solve this problem, with (probably) significant time consumption
  return 0;
}
