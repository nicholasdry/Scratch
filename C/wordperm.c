
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>

typedef struct character {
      int active;
      int count;
} chars;

chars chars[26];

int factorial(int a) {
      if (a == 0) {
            return 1;
      }
      return a * factorial(a - 1);
}

int main(int argc, char **argv) {

      int i;
      while (i < 27) { // initialize array
            character[i] = 0;
            i++;
      }

      for (i = 0; i < strlen(argv[1]); i++) {

      }

}
