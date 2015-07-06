#include <stdio.h>

/**
 * sportspoints.c
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/1undyd/010714_challenge_147_easy_sport_points/
 * Author: Trevor Salom
*/

int main(void) {
	int score;
  printf("Please enter a score: ");
  scanf("%i", &score);
	if(score % 3 == 0 || score == 0 || score > 5) {
		printf("Valid Score\n");
	}
	else {
		printf("Invalid Score\n");
	}
}
