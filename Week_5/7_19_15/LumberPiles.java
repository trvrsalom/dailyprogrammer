import java.util.Scanner;
public class LumberPiles {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    System.out.println("Input:");

    int rows = scan.nextInt();
    int logs = scan.nextInt();

    int[][] pile = new int[rows][rows];
    String[] spiles = new String[rows];
    spiles[0] = scan.nextLine();
    for(int i = 0; i < rows; i++) {
      spiles[i] = scan.nextLine();
      String[] tpiles = spiles[i].split(" ");
      for(int x = 0; x < tpiles.length; x++) {
        pile[i][x] = Integer.parseInt(tpiles[x]);
      }
    }
    dist(pile, logs);
    System.out.println("------");
    for(int[] a : pile) {
      for(int b : a) {
        System.out.print(b + " ");
      }
      System.out.println(" ");
    }
  }

  public static int[][] dist(int[][] pile, int n) {
    if (n == 0) {
      return pile;
    }
    int minx = 0;
    int miny = 0;
    for(int a = 0; a < pile.length; a++) {
      for(int b = 0; b < pile.length; b++) {
        if(pile[a][b] < pile[minx][miny]) {
          minx = a;
          miny = b;
        }
      }
    }
    pile[minx][miny]++;
    return dist(pile, n-1);
  }
}
