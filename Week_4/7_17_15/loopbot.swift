/**
 * loopbot.swift
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/32vlg8/20150417_challenge_210_hard_loopy_robots/
 * Author: Trevor Salom
*/
var inp = "SRSR"
var x = 0;
var y = 0;
var dir = 0; //0 = north, 1 = west, 2 = south, 3 = east
for i in 0...count(inp)-1{
    var c = inp.substringToIndex(advance(inp.startIndex, i+1))
    var fc = c.substringFromIndex(advance(c.endIndex, -1))
    if (fc == "R") {
        dir = dir == 3 ? 0 : dir + 1
    }
    else if (fc == "L") {
        dir = dir == 0 ? 3 : dir - 1
    }
    else if (fc == "S") {
        if (dir == 0) { y++ }
        else if (dir == 1) { x++ }
        else if (dir == 2) { y-- }
        else if (dir == 3) { x-- }
    }
}
if (dir == 0) {
    if (x == 0 && y == 0) {
        println("Loop detected. 1 cycle")
    }
    else {
        println("No loop detected")
    }
}
else if (dir == 2) {
    println("Loop detected. 2 cycles")
}
else {
    println("Loop detected. 4 cycles")
}
