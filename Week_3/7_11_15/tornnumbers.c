#include <stdio.h>
#include <math.h>

/**
 * tornnumbers.c
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/230m05/4142014_challenge_158_easy_the_torn_number/
 * Author: Trevor Salom
*/

int nd(int n) {
    int digitCount[10] = {0};
    digitCount[(n % 10)]++;
    digitCount[(n % 100) / 10]++;
    digitCount[(n % 1000) / 100]++;
    digitCount[(n % 10000) / 1000]++;
    int i;
    for (i = 0; i < 10; i++) {
        if (digitCount[i] > 1)
            return 0;
    }
    return 1;
}

int isTorn(int n) {
    if (nd(n))
        return (n == (((n/100) + (n % 100) * ((n/100) + (n % 100)))));
    return 0;
}

int main(void) {
  int i;
  for(i = 0; i < 100000; i++) {
    if(isTorn(i)) {
      printf("%d\n", i);
    }
  }
	return 0;
}
