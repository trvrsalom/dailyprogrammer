using System.IO;
using System;
using System.Collections;

/**
 * TwitterHandles.cs
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2jt4cx/10202014_challenge_185_easy_generated_twitter/
 * Author: Trevor Salom
 */

class TwitterHandles
{
    static void Main()
    {
      string[] text = System.IO.File.ReadAllLines(@"enable1.txt");
      for(int i = 0; i < text.Length; i++) {
        if(checkTwitter(text[i])) {
          Console.WriteLine(getTwitterHandle(text[i]) + " : " + text[i]);
        }
      }
    }

    static bool checkTwitter(String hand) {
      string at = hand.Substring(0,2);
      if(at == "at")
        return true;
      return false;
    }

    static string getTwitterHandle(String hand) {
      return "@" + hand.Substring(2);
    }
}
