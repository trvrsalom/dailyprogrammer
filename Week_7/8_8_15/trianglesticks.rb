=begin
 trianglesticks.rb
 Created for: https://www.reddit.com/r/ProgrammingPrompts/comments/2zgj48/easymathematical_simulation_breaking_a_stick_to/
 Author: Trevor Salom
=end

print "Tries: "
tries = gets.chomp.to_i
print "Length: "
length = gets.chomp.to_i
success = 0
(1..tries).each do |i|
  a = rand(0.1..length)
  if a < length/2
    b = rand(0.1..(length-a))
    c = length - a - b
    if a < length/2 && b < length/2 && c < length/2
      success += 1
    end
  end
end
puts "#{(success.to_f/tries.to_f)*100}%"
