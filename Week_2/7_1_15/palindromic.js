/**
 * palindromic.js
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/38yy9s/20150608_challenge_218_easy_making_numbers/
 * Author: Trevor Salom
 * Notes: Built for Mozilla Foundation's Rhino JavaScript Engine, so if your running this anywhere else,
 * you should change print() to console.log()
 */

function findPalindromic(number) {
    var steps = 0
    var rn = 0;
    var on = number;
    for (steps = 0; steps < 10000; steps++) {
        rn = reverseNum(number);
        if (number === rn) {
            print(on + " gets palindromic after " + steps + " steps: " + number);
            return;
        }
        else
            number += rn;
    }
}

function reverseNum(num) {
    return parseInt(num.toString().split("").reverse().join(""));
}

findPalindromic(11);
findPalindromic(68);
findPalindromic(123);
findPalindromic(286);