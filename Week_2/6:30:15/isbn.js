/**
 * isbn.js
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2s7ezp/20150112_challenge_197_easy_isbn_validator/
 * Author: Trevor Salom
 * Notes: Built for Mozilla Foundation's Rhino JavaScript Engine, so if your running this anywhere else,
 * you should change print() to console.log()
 */

function validateISBN(isbn) {
    var sum = 0;
    for (var i = 0; i < isbn.length; i++) {
        sum += (parseInt(isbn.charAt(i)) * (10 - i));
    }
    print((sum % 11 == 0) ? "Valid" : "Invalid");
}

validateISBN("0812550706");
validateISBN("0812510706");