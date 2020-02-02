#include <stdchecked.h>
#include <stdio_checked.h>
#include <string_checked.h>

checked int main(int argc, char** argv : itype(array_ptr<nt_array_ptr<char>>) count(argc)) {
  int a checked[5];
  int b checked[4];
    memset(a, 5, sizeof(a));
  memcpy<int>(b, dynamic_bounds_cast<array_ptr<int>>(a + 1, count(4)), sizeof(b));
  putchar(b[3] + '0');
  putchar('\n');
  return 0;
}
