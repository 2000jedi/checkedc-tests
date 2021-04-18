#include <stdlib.h>
#include <stdio.h>

#define NOP() __asm__ __volatile__ ("nop\n")

struct pt {
  int a;
  int b;
};

int main(int argc, char** argv) {
  _Ptr<struct pt> x = _Assume_bounds_cast<_Ptr<struct pt>>(
    malloc(sizeof(struct pt))
  );

  _Ptr<int> y = _Assume_bounds_cast<_Ptr<int>>(
    malloc(sizeof(int))
  );

  scanf("%d%d%d", &(x->a), &(x->b), y);

  printf("Assigning into stricter pointer:\n");
  NOP();
  y = _Dynamic_bounds_cast<_Ptr<int>>(x);
  NOP();
  printf("Done: x={%d, %d} y={%d}\n", x->a, x->b, *y);
  printf("Assigning into wider pointer:\n");
  NOP();
  x = _Dynamic_bounds_cast<_Ptr<struct pt>>(y);
  NOP();
  printf("Done: x={%d, %d} y={%d}\n", x->a, x->b, *y);
  
  return 0;
}
