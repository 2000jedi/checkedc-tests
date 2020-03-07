/*
 * This test is to verify that the bounds of _Nt_array_ptr type does not include the '\0' sign.
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

_Unchecked void pc(char p) {
  putchar(p);
}

_Checked int main(int argc, _Nt_array_ptr<char> argv _Checked[] : count(argc)) {
        _Nt_array_ptr<char> x : count(10) = "1234567890";
        for (int i = 0; i < 10; ++i)
                /* If the '\0' sign is included, program will be terminated due to runtime error */
                pc(x[i]);
        pc('\n');
}
