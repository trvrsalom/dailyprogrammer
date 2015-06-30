/**
 * metaprogramming.js
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/36vuzm/20150522_challenge_215_hard_metaprogramming/
 * Author: Trevor Salom
 * Notes: Built for Mozilla Foundation's Rhino JavaScript Engine, so if your running this anywhere else,
 * you should change print() to console.log()
*/

var list = ["Hello World!", "", "0", 1, 0, 0.0, [], [1,2,3], true, false];
for (var i = 0; i < list.length; i++) {
    print("[" + ("              " + list[i]).slice(-13) + " | " + (" " + Boolean(list[i])).slice(-5) + "]");
}