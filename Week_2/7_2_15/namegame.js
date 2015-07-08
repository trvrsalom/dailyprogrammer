/**
 * palindromic.js
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/338p28/20150420_challenge_211_easy_the_name_game/
 * Author: Trevor Salom
 * Notes: Built for Mozilla Foundation's Rhino JavaScript Engine, so if your running this anywhere else,
 * you should change print() to console.log()
 */
 
function rhyme (name, splitName) {
    var wrds = name + ", " + name + " bo B"+splitName.toLowerCase()+".\nBonana fanna fo F"+splitName.toLowerCase()+".\nFee fy mo M"+splitName.toLowerCase()+".\n"+name+"!";
    print(wrds);
}
function splitName (name) {
    var slicedName = name;
    var i = 0;
    var haveLetter = false;

    while (!haveLetter) {
        for (var j = 0; j < vowels.length; j++) {
            if (slicedName[0].toUpperCase() === vowels[j]) {
                haveLetter = true;
            }
        }
        if (!haveLetter) {
            slicedName = slicedName.slice(1-(slicedName.length));
        }
        i++;
    }
    return slicedName;
}

var vowels = ["A","E","I","O","U"];
var name = "Trevor";
var split = splitName(name);
rhyme(name, split);