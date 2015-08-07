=begin
 piglatin.rb
 Created for: https://www.reddit.com/r/ProgrammingPrompts/comments/31gl36/easy_create_a_pyglatin_translator/
 Author: Trevor Salom
=end

print "Input: "
input = gets.chomp
input.split(" ").each{ |word| print word[1..word.length] + word[0..0].downcase + "ay " }
