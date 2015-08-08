=begin
 count.rb
 Created for: https://www.reddit.com/r/ProgrammingPrompts/comments/2sehb0/easy_letter_counter/
 Author: Trevor Salom
=end

print "Input: "
input = gets.chomp
counts = Hash.new
input.split("").each{ |letter|
  if(counts.has_key?(letter))
    counts[letter] += 1
  else
    counts[letter] = 1
  end
}
counts.each do |key, value|
  puts "#{key} - #{value}"
end
