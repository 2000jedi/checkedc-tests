#include <stdlib.h>
#include <stdio.h>

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
  
  printf("Assigning into stricter pointer: \n");
  y = _Dynamic_bounds_cast<_Ptr<int>>(x);
  printf("Done\n");
  printf("Assigning into wider pointer: \n");
  x = _Dynamic_bounds_cast<_Ptr<struct pt>>(y);
  printf("Done\n");
  
  return 0;
}
