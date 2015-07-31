using System.IO;
using System;
/**
 * MineSweeper.cs
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/126905/10272012_challenge_108_intermediate_minesweeper/
 * Author: Trevor Salom
 */
class MineSweeper
{
  static void Main()
  {
    int height = 15;
    int width = 15;
    int mines = 20;

    int minesplaced = 0;

    int total = height*width;

    int[,] minefield = new int[width, height];

    for(int x = 0; x < width; x++)
      for(int y = 0; y < height; y++)
        minefield[x, y] = 0;

    Random rnd = new Random();

    while(minesplaced <= mines)
      for(int x = 0; x < width; x++)
        for(int y = 0; y < height; y++)
          if(minesplaced <= mines)
            if(rnd.Next(0, total) == 0) {
              minefield[x, y] = 1;
              minesplaced++;
            }

    for(int x = 0; x < width; x++) {
      for(int y = 0; y < height; y++)
        Console.Write(minefield[x, y] + " ");
      Console.WriteLine("");
    }
  }
}
