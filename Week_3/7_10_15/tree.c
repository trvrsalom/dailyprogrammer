#include <stdio.h>

/**
 * tree.c
 * Created for: http://www.reddit.com/r/dailyprogrammer/comments/1t0r09/121613_challenge_145_easy_tree_generation/
 * Author: Trevor Salom
*/

int main(void) {
  int width;
  char wood, leaves;
  scanf ("%i %c %c", &width, &wood, &leaves);
  int curr = 1;
  int i, j;
  for(i = 1; i <= width; i+= 2) {
    int spaces = ((width-i)/2);
    for(j = 0; j < spaces; j++) {
      printf(" ");
    }
    for(j = 0; j < i; j++) {
      printf("%c", leaves);
    }
    for(j = 0; j < spaces; j++) {
      printf(" ");
    }
    printf("\n");
  }
  for(j = 0; j < (width-2)/2; j++) {
    printf(" ");
  }
  for(j = 0; j < 3; j++) {
    printf("%c", wood);
  }
  printf("\n");
	return 0;
}
