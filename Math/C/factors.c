#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// To grab command line input
int asciiToInt(char *a) {
	if (a[0] == '-') {
		printf("Positive Numbers Only.\n");
		exit(EXIT_SUCCESS);
	}
	int toReturn = 0, i;
	for (i = 0; i < strlen(a); i++) {
		toReturn *= 10;
		toReturn += a[i] - '0';
	}
	return toReturn;
}

int main(int argc, char **argv) {

	int number = asciiToInt(argv[1]), i;
	
	// Solely for aesthetic output
	printf("%i\n", number);
	printf("---------------\n");
	
	for (i = 1; i < number/2; i++) {
		if (number % i == 0) {
			if (i > (number / i)) exit(EXIT_SUCCESS);
			printf("%i \t %i\n", i, number/i);
		}
	}

	return 0;
}
