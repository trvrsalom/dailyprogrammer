/**
 * Easter.java
 * Created for: http://www.reddit.com/r/dailyprogrammer/comments/2wbvuu/20150218_challenge_202_intermediate_easter/
 * Author: Trevor Salom
 */

public class Easter {
  public static void main(String[] args) {
    whenwaseaster(1999);
  }

  public static void whenwaseaster(int y){
    int ce = y;
    int ye = y;
    while(ce != ye+1){
      int a = ce%19;
      int b = ce/100;
      int c = ce % 100;
      int d = b/4;
      int e = b % 4;
      int f = (b+8)/25;
      int g = (b-f+1)/3;
      int h = (a * 19 + b - d - g + 15) % 30;
      int i = c/4;
      int k = c % 4;
      int L = (32 + 2*e + 2*i - h - k) % 7;
      int m = (a + 11*h + 22*L)/451;
      int month = (h + L - 7*m + 114)/31;
      int day = ((h + L - 7*m + 114) % 31) + 1;
      System.out.printf("%s %s, %s \n", month == 3 ? "March":"April", day, ce);
      ce++;
    }
  }
}
