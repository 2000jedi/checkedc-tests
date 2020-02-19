#include <stdchecked.h>
#include <stdio_checked.h>
#include <string_checked.h>
#include <stdlib_checked.h>

unchecked int main(int argc, char** argv : itype(array_ptr<nt_array_ptr<char>>) count(argc)) {
  int a checked[5];
  memset(a, 5, sizeof(int) * 5);
  for (int i = 0; i < 6; ++i) {
    putchar(i + '0');
    putchar(':');
    putchar(a[i] + '0');
    fflush(stdout);
    putchar('\n');
  }
  
  return 0;
}
