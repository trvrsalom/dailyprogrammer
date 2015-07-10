#include <stdio.h>

/**
 * hexwords.c
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2ww3pl/2015223_challenge_203_easy_the_start_of_something/
 * Author: Trevor Salom
*/

int main(void) {
  int size = 10;
  int i;
  int x;
  for(i = 0; i < size; i++) {
    printf("_");
  }
  printf("\n");
  for(i = 0; i < size; i++) {
    printf("|");
    for(x = 0; x < size-2; x++) {
      printf(" ");
    }
    printf("|\n");
  }
  for(i = 0; i < size; i++) {
    printf("-");
  }
  printf("\n");
	return 0;
}
