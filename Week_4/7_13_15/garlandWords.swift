/**
 * garlandWords.swift
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/3d4fwj/20150713_challenge_223_easy_garland_words/
 * Author: Trevor Salom
*/

func garland(word : String) {
    var wordCount = count(word)-1
    var garlandNumber = 0;
    while(wordCount >= 0) {
        if(word.substringToIndex(advance(word.startIndex, wordCount)) == word.substringFromIndex(advance(word.startIndex, count(word) - wordCount))) {
            garlandNumber = garlandNumber < count(word.substringFromIndex(advance(word.startIndex, count(word) - wordCount))) ? count(word.substringFromIndex(advance(word.startIndex, count(word) - wordCount))) : garlandNumber

        }
        wordCount -= 1
    }
    println(garlandNumber)
}
garland("onion")
garland("alfalfa")
garland("ceramic")
