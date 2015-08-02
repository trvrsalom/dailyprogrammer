using System.IO;
using System;
/**
 * RecursiveSong.cs
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/xilgw/812012_challenge_84_intermediate_recursive_song/
 * Author: Trevor Salom
 */
class RecursiveSong
{
    static void Main()
    {
        RecursiveSong(99);
    }

    static void RecursiveSong(int bottles) {
        if(bottles > 1) {
            Console.WriteLine(bottles + " bottles of beer on the wall, " + bottles + " bottles of beer. Take one down pass it around, " + (bottles - 1) + " bottles of beer on the wall");
            RecursiveSong(bottles - 1);
        }
        else if(bottles == 1) {
            Console.WriteLine(bottles + " bottle of beer on the wall, " + bottles + " bottle of beer. Take one down pass it around, " + (bottles - 1) + " bottles of beer on the wall");
            RecursiveSong(bottles - 1);
        }
    }
}
