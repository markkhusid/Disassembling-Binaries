#include <stdio.h>

/* function declaration */
int sum (int a, int b);

int main (int argc, char * argv[]) {

	int x, y, z;

	x = 3;

	y = 4;

	z = sum(x, y);
}

/* function definition */
int sum (int a, int b) {
	return a + b;
}

