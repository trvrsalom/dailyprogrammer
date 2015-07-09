#include <stdio.h>
#include <string.h>

/**
 * bioinformatics.c
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2zyipu/20150323_challenge_207_easy_bioinformatics_1_dna/
 * Author: Trevor Salom
*/

int main(void) {
	char sequence[] = "AATGCCTATGGC";
	char pos[] = "ATGC";
	int i;
	for(i = 0; i < strlen(sequence); i++) {
		printf("%c ", sequence[i]);
	}
	printf("\n");
	for(i = 0; i < strlen(sequence); i++) {
		if(sequence[i] == 'A')
			printf("%c ", 'T');
		else if(sequence[i] == 'T')
			printf("%c ", 'A');
		else if(sequence[i] == 'G')
			printf("%c ", 'C');
		else
			printf("%c ", 'G');
	}
	printf("\n");
	return 0;
}
