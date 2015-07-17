/**
 * eeloffortune.swift
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/3ddpms/20150715_challenge_223_intermediate_eel_of_fortune/
 * Author: Trevor Salom
*/
func problem(word : String, issue : String) -> Bool {
    var issueInd = 1
    for i in 0...count(word)-1 {
        var wordPart = word.substringToIndex(advance(word.startIndex, i + 1))
        wordPart = wordPart.substringFromIndex(advance(wordPart.endIndex, -1))
        var issuePart = issue.substringToIndex(advance(issue.startIndex, issueInd))
        var issue2 = issuePart.substringFromIndex(advance(issuePart.endIndex, -1))
        if(String(wordPart) == String(issue2)) {
            issueInd += 1
        }
    }
    return issueInd == count(issue) + 1;
}

println(problem("misfunctioned", "snond"))
println(problem("synchronized", "snond"))
println(problem("shotgunned", "snond"))
