import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
/**
 * ThueMorse.java
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2cld8m/8042014_challenge_174_easy_thuemorse_sequences/
 * Author: Trevor Salom
 */

public class ThueMorse {
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    int n = Integer.parseInt(in.nextLine());
    System.out.println("nth\tSequence");
    System.out.println("===========================================================================");
    comp(n);
  }

  public static void comp(int n){
    String s = "0";
    for(int i = 0; i <= n; i++) {
      System.out.println(i + "\t" + s);
      s += s.replaceAll("0", "2").replaceAll("1", "0").replaceAll("2", "1");
    }
  }
}
