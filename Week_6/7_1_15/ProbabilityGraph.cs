using System.IO;
using System;
/**
 * ProbabilityGraph.cs
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/xilgw/812012_challenge_84_intermediate_recursive_song/
 * Author: Trevor Salom
 */
 class ProbabilityGraph
 {
     private static Random R;
     static void Main()
     {
         R = new Random();
         Graph(TwoDice, 2, 12, 1000);
     }

     public static int TwoDice()
     {
         return R.Next(1, 7) + R.Next(1, 7);
     }

     public static void Graph(Func<int> F, int low, int high, int tests)
     {
         int y = (high-low)+low+1;
         int[] results = new int[y];
         for(int i = 0; i < tests; i++)
         {
             int x = F();
             results[x] += 1;
         }
         int max = 0;
         for(int i = 0; i < results.Length; i++) {
             if(max < results[i]) {
                 max = results[i];
             }
         }

         for(int i = low; i <= high; i++)
         {
             string op = "";
             float t = ((float)results[i])/((float)max);
             for(int x = 0; x < t*((float)max); x++)
             {
                 op += "#";
             }
             if(i < 10)
                 Console.WriteLine(i + ":  " + op);
             else
                 Console.WriteLine(i + ": " + op);
         }
     }
 }
