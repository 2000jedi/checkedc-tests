/* This test shows that modifying the function prototpye will not affect the function code inside */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Function Declarations */
void foo(char *ptr : itype(_Ptr<char>));
void bar(char *ptr);

/* Giving a checked pointer to function foo does not cause type conflict */
void foo(char *ptr : itype(_Ptr<char>)){
	bar(ptr);
}
void bar(char *ptr){
	printf("%c\n", *ptr);
}

/* Output is 'a' with no error */
int main(int argc, char* args[]){
	char x = 'a';
	_Ptr<char> p = &x;
	foo(p);
}
