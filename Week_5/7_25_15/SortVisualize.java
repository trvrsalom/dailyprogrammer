import java.io.File;
import java.util.Arrays;
import java.util.Scanner;

/**
* SortVisualize.java
* Created for: https://www.reddit.com/r/dailyprogrammer/comments/2gsqfd/9192014_challenge_180_hard_sorting_visualisation/
* Author: Trevor Salom
*/

public class SortVisualize {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String inp = in.nextLine();
        String[] sinp = inp.split(" ");
        int[] arr = new int[sinp.length];
        for(int i = 0; i < sinp.length; i++) {
            arr[i] = Integer.parseInt(sinp[i]);
        }
        sortViz(arr);
    }

    public static void sortViz(int[] inp){
        int[] fin = new int[inp.length];
        int fi = 0;
        printViz(inp, fin);
        for(int i = 0; i < inp.length; i++) {
          int min = Integer.MAX_VALUE;
          int mini = 0;
          for(int x = 0; x < inp.length; x++) {
            if(inp[x] > 0 && inp[x] < min) {
              mini = x;
              min = inp[x];
            }
          }
          inp[mini] = 0;
          fin[fi] = min;
          fi++;
          printViz(inp, fin);
        }
    }

    public static void printViz(int[] a, int[] b) {
      String s = "[";
      for(int i = 0; i < a.length; i++) {
        if(a[i] > 0) {
          if(i != a.length - 1) {
            s += a[i] + ", ";
          }
          else {
            s+= a[i];
          }
        }
      }
      s += "] [";
      for(int i = 0; i < b.length; i++) {
        if(b[i] > 0) {
          if(i != a.length - 1) {
            s += b[i] + ", ";
          }
          else {
            s+= b[i];
          }
        }
      }
      s += "]";
      System.out.println(s);
    }
}
