#include <stdio.h>

int main(int argc, char * argv[]) {

	int a, b;

	b = 5;

	printf ("Enter a number between 1 and 10 -> ");
	scanf ("%d", &a);

	if (a > b) {
		printf ("The number was higher than 5!\n");
	}

}

