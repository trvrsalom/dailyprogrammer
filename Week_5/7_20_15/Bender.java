import java.util.Scanner;

/**
 * Bender.java
 * Created for: http://www.reddit.com/r/dailyprogrammer/comments/2w84hl/20150216_challenge_202_easy_i_am_bender_please/
 * Author: Trevor Salom
*/

public class Bender {
  public static void main (String[] args) {
    Scanner in = new Scanner(System.in);
    String r = in.nextLine();
    r = r.equals("") ? "0100100001100101011011000110110001101111001000000101011101101111011100100110110001100100" : r;
    for(int i = 0; i < (r.length() / 8); i++) {
      String sent = r.substring(i * 8, (i * 8) + 8);
      int cNum = 0;
      int pow = 0;

      for(int y = 7; y >= 0; y--) {
        if(sent.charAt(y) - 48 == 0 || sent.charAt(y) - 48 == 1) {
          cNum += (sent.charAt(y) - 48) * (int) Math.pow(2, pow);
          pow++;
        }
      }
      System.out.print((char)cNum);
    }
  }
}
