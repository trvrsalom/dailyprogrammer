=begin
 FakeGrades.rb
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/28vgej/6232014_challenge_168_easy_final_grades_test_data/
 Author: Trevor Salom
=end

print "Input (int): "
word = gets.chomp
num = word.to_i

names = []
File.open("names.txt", "r").each{|name| names << name.strip}
num.times do
  puts "#{names.sample}, #{names.sample}: #{rand(100)}, #{rand(100)}, #{rand(100)}, #{rand(100)}, #{rand(100)}"
end
