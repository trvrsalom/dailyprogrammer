/**
 * wordsnake.js
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/3bi5na/20150629_challenge_221_easy_word_snake/
 * Author: Trevor Salom
 * Notes: Built for Mozilla Foundation's Rhino JavaScript Engine, so if your running this anywhere else,
 * you should change print() to console.log()
*/
function addVertical(word, column) {
    for(var i = 1; i < word.length - 1; i++) {
        var row = [];
        var prow = word.charAt(i);
        prow = ("                                                                                                            " + prow).slice(-lastX - 1);
        for(var p = 0; p < prow.length; p++) 
            row.push(prow[p]);
        grid.push(prow);
    }
}

function addHorizontal(word, row) {
    lastX += word.length;
    word = ("                                                                                                            " + word).slice(-lastX);
    var h = [];
    for(var i = 0; i < word.length; i++) {
        h.push(word.charAt(i));
    }
    grid.push(h);
    lastX = word.length - 1;
}

function printGrid(r) {
    for(var x = 0; x < r.length; x++) {
        var str = ""
        for(var y = 0; y < r[x].length; y++)
            str += r[x][y];
        print(str);
    }
}

var str = "SHENANIGANS SALTY YOUNGSTER ROUND DOUBLET TERABYTE ESSENCE";
var words = str.split(" ");
var grid = []; //[X][Y]
lastX = 0;

for(var i = 0; i < words.length; i++) {
    if(i % 2 == 0)
        addHorizontal(words[i], i);
    else 
        addVertical(words[i], i);
}

printGrid(grid);