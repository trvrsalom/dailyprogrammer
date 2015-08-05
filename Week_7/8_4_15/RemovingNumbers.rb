=begin
 RemovingNumbers.rb
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/30ubcl/20150330_challenge_208_easy_culling_numbers/
 Author: Trevor Salom
=end

print "Input: "
word = gets.chomp
down = word.downcase!
numbers = word.split(' ').uniq.join(' ')
puts "#{numbers}"
