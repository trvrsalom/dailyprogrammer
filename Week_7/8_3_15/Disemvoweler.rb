=begin
 Disemvoweler.rb
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/1ystvb/022414_challenge_149_easy_disemvoweler/
 Author: Trevor Salom
=end

print "Input: "
word = gets.chomp
down = word.downcase!
finword = word.delete('aeiou ')
vowels = word.delete('^aeiou')
puts "#{finword}"
puts "#{vowels}"
