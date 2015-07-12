/**
 * leetspeak.swift
 * Created for: http://www.reddit.com/r/dailyprogrammer/comments/2ptrmp/20141219_challenge_193_easy_acronym_expander/
 * Author: Trevor Salom
*/

func getIndex() {

}

func translateWord(inp : String) -> String {
    let leet = ["lol", "dw", "hf", "gg", "brb", "g2g", "wtf", "wp", "gl", "imo"]
    let eng = ["laugh out loud", "don't worry", "have fun", "good game", "be right back", "got to go", "what the fuck", "well played", "good luck", "in my opinion"]
    var ind = find(leet, inp)
    if ind != nil {
        return eng[ind!]
    }
    var inp2 = inp.substringToIndex(advance(inp.startIndex, count(inp)-1))
    var ind2 = find(leet, inp2)
    if ind2 != nil {
        return eng[ind2!] + inp.substringFromIndex(advance(inp.startIndex, count(inp)-1))
    }
    return inp
}

func translateSent(str : String) {
    var words : [String] = str.componentsSeparatedByString(" ")
    var trs = [String]()
    for index in 0...words.count-1 {
        trs.append(translateWord(words[index]))
    }
    var joiner = " "
    println(joiner.join(trs))
}

translateSent("wtf that was unfair")
translateSent("imo that was wp. Anyway I've g2g")
