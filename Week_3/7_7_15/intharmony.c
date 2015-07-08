#include <stdio.h>

/**
 * intharmony.c
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/32goj8/20150413_challenge_210_easy_intharmonycom/
 * Author: Trevor Salom
*/

int main(void) {
    unsigned int x=0, y=0; 
    int m=0;
    scanf("%u %u", &x, &y);
    float mult = 3.125;
    printf("%'.0f%% match\n", __builtin_popcount(x ^ ~y) * mult);
    printf("Opposite of %u is %u\n", x, ~x);
    printf("Opposite of %u is %u\n", y, ~y);
    return 0;
}
