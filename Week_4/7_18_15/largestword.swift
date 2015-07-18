/**
 * largestword.swift
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2dgd5v/8132014_challenge_175_intermediate_largest_word/
 * Author: Trevor Salom
*/
var w = "abc cca aaaaaa bca"
var c = "a b c"
var canSpell = [Bool]()
var lengths = [Int]()
var words = split(w) {$0 == " "}
var chars = split(c) {$0 == " "}
for word in words {
    var useable = [Int]()
    var possible = true
    for i in 0...count(word)-1 {
        useable.append(0)
    }
    for i in 0...count(word)-1 {
        if possible {
            var foundChar = false
            var wordPart = word.substringToIndex(advance(word.startIndex, i + 1))
            wordPart = wordPart.substringFromIndex(advance(wordPart.endIndex, -1))
            for i in 0...count(chars) - 1 {
                if(chars[i] == wordPart && useable[i] == 0) {
                    useable[i] = 1
                    foundChar = true
                }
            }
            if !foundChar {
                possible = false
            }
        }
    }
    canSpell.append(possible)
    lengths.append(count(word))
}
var max = 0
for i in 0...canSpell.count-1 {
    if(canSpell[i] == true && lengths[i] > max) {
        max = lengths[i]
    }
}
for i in 0...words.count-1 {
    if(count(words[i]) == max && canSpell[i]) {
        print(words[i] + " ")
    }
}
