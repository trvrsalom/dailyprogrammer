import java.util.*;
import java.lang.*;
import java.io.*;
import java.util.Scanner;
import java.util.Random;

/**
 * Shuffling.java
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/3e0hmh/20150720_challenge_224_easy_shuffling_a_list/
 * Author: Trevor Salom
*/

class Shuffling
{
	public static void main (String[] args) throws java.lang.Exception
	{
		Scanner scan = new Scanner(System.in);
		String input = scan.nextLine();
		int numberOfShuffles = 99;
	    int moveFrom;
	    int moveTo;
	    String moveFromString;
	    String moveToString;
	    StringTokenizer strTokenizer = new StringTokenizer(input, " ");;
	    ArrayList<String> shuffleList = new ArrayList<String>();
	    while(strTokenizer.hasMoreTokens()){
	        shuffleList.add(strTokenizer.nextToken());
	    }
	    Random rand = new Random();
	    for(int i = 0; i < shuffleList.size() * numberOfShuffles; i++){
	        moveTo = rand.nextInt(shuffleList.size());
	        moveFrom = rand.nextInt(shuffleList.size());
	        moveToString = shuffleList.get(moveTo);
	        moveFromString = shuffleList.get(moveFrom);
	        shuffleList.set(moveTo, moveFromString);
	        shuffleList.set(moveFrom, moveToString);
	    }
	    StringBuilder shuffledString = new StringBuilder();
	    for(String str : shuffleList){
	        shuffledString.append(str + " ");
	    }
	    System.out.println(shuffledString.toString().trim());
	}
}
