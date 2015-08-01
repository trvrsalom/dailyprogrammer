=begin
 Addingfractions.rb
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/3fmke1/20150803_challenge_226_easy_adding_fractions/
 Author: Trevor Salom
=end

class Frac
    attr_reader :numerator, :denominator
    def initialize(input)
        if not input.include? "/"
            @numerator    = input.to_i
            @denominator  = 1
        else
            first, second = input.split(/\//)
            @numerator    = first.to_i
            @denominator  = second.to_i
        end
    end
    def to_s
        return @numerator.to_s + "/" + @denominator.to_s
    end
    def +(f)
        @numerator   = @numerator * f.denominator + @denominator * f.numerator
        @denominator = @denominator * f.denominator

        gcd = @numerator.gcd(@denominator)

        @numerator   = @numerator / gcd
        @denominator = @denominator / gcd
        return self
    end
end

num = ARGV[0].to_i

fractions = []

ARGV[1..num].each { |f| fractions.push(Frac.new(f)) }

puts fractions.inject(:+)
