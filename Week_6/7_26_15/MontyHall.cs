using System.IO;
using System;
/**
 * MontyHall.cs
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/1qdw40/111113_challenge_141_easy_monty_hall_simulation/
 * Author: Trevor Salom
 */
class MontyHall
{
    static void Main()
    {
        int tests = 1000000;
        Random rnd = new Random();
        int s = 0;
        int ns = 0;
        for(int i = 0; i < tests; i++) {
            int door = (rnd.Next(1, 4));
            int sp = rnd.Next(1, 4);
            int nsp = rnd.Next(1, 4);
            int reveal = rnd.Next(0, 2);
            sp = FindSwitch(sp, FindReveal(sp, door));
            s += sp == door ? 1 : 0;
            ns += nsp == door ? 1 : 0;
        }
        Console.WriteLine("Switching wins " + (Convert.ToDouble(s)/Convert.ToDouble(tests)) * 100 + "% of the time.");
        Console.WriteLine("Not switching wins " + (Convert.ToDouble(ns)/Convert.ToDouble(tests)) * 100 + "% of the time.");
    }

    static int FindReveal(int op, int door) {
        Random rnd = new Random();
        if(op == door) {
            if(op == 1)
                return retRandom(2, 3);
            if(op == 2)
                return retRandom(1, 3);
            if(op == 3)
                return retRandom(1, 2);
        }
        return retNot(op, door);
    }

    static int retRandom(int a, int b) {
        Random rnd = new Random();
        return rnd.Next(0, 2) == 0 ? a : b;
    }

    static int retNot(int a, int b) {
        if(a != 1 && b != 1)
            return 1;
        if(a != 2 && b != 2)
            return 2;
        return 3;
    }

    static int FindSwitch(int o, int r) {
        if((o == 1 && r == 2) || (o == 2 && r == 1))
            return 3;
        if((o == 2 && r == 3) || (o == 3 && r == 2))
            return 1;
        return 2;
    }
}
