/**
 * boxchart.js
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2m48nn/20141112_challenge_188_intermediate_box_plot
 * Author: Trevor Salom
 * Notes: Built for Mozilla Foundation's Rhino JavaScript Engine, so if your running this anywhere else,
 * you should change print() to console.log()
 * I don't think a bar graph is technically a box plot, but in this case it technically is...
 */
function getMax(arr) {
    var max = arr[0];
    for(var i = 0; i < arr.length; i++) {
        if(arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}

var inp = "2095 2180 1049 1224 1350 1567 1477 1598 1462 972 1198 1847 2318 1460 1847 1600 932 1021 1441 1533 1344 1943 1617 978 1251 1157 1454 1446 2182 1707 1105 1129 1222 1869 1430 1529 1497 1041 1118 1340 1448 1300 1483 1488 1177 1262 1404 1514 1495 2121 1619 1081 962 2319 1891 1169";
//var inp = "7 12 21 28 28 29 30 32 34 35 35 36 38 39 40 40 42 44 45 46 47 49 50 53 55 56 59 63 77 191";
var data = inp.split(" ");
for(var i = 0; i < data.length; i++) {
    data[i] = parseInt(data[i]);
}
var maxVal = getMax(data);
for(var i = 0; i < data.length; i++) {
    data[i] = data[i]/maxVal;
    data[i] = Math.floor(data[i]*10);
}
for(var i = 10; i > 0; i--) {
    var str = "";
    for(var x = 0; x < data.length; x++) {
        if(data[x] >= i) {
            str += "#";
        }
        else {
            str += " ";
        }
    }
    print(str);
}