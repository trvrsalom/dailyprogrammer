#include <stdio.h>
#include <string.h>

/**
 * balance.c
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/3c9a9h/20150706_challenge_222_easy_balancing_words/
*/

void balance(char inp[100]){
    int len;
    int i, j, k, wb, wa;

    len = strlen(inp);

    for(i=1; i<len-1; i++){
        wb=0;
        wa=0;
        for(j=0; j<i; j++) {
            wb+=((int)inp[j]-64)*(i-j);
        }
        for(j=i+1; j<len; j++) {
            wa+=((int)inp[j]-64)*(j-i);
        }
        if(wb==wa){
            for(k=0; k<i; k++) {
                printf("%c", inp[k]);
            }
            printf(" %c ", inp[i]);
            for(k=i+1; k<len; k++) {
                printf("%c", inp[k]);
            }
            printf(" - %d\n", wa);
            return;
        }
    }
    printf("IMPOSSIBLE!\n");
}
int main(){
    balance("CONSUBSTANTIATION");
    return 0;
}