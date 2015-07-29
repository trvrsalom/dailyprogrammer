using System.IO;
using System;
using System.Linq;
/**
 * BogoSort.cs
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2d8yk5/8112014_challenge_175_easy_bogo/
 * Author: Trevor Salom
 */
class BogoSort
{
    static void Main()
    {
        string[] arr = new String[]
        {
            "cat",
            "animal",
            "abacus",
            "framework"
        };
        Bogo(arr);
    }

    static void Bogo(string[] a) {
        int iterations = 0;
        Random rnd=new Random();
        while(!isOrdered(a)) {
            a = a.OrderBy(x => rnd.Next()).ToArray();
            iterations ++;
        }
        Console.WriteLine("It took " + iterations + " iterations.");
    }

    static bool isOrdered(string[] a) {
        for(int i = 1; i < a.Length; i++)
            if(a[i].CompareTo(a[i-1]) == -1)
                return false;
        return true;
    }
}
