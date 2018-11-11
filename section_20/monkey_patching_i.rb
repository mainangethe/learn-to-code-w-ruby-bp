# Monkey Patching
# Modifying or adding features to an pre-existing class
# Ruby even allows patching to it's own existing classes
# We simply write the same construct but use the same name of the existing class

class Array

    def sum
        total = 0
        self.each {|element| total += element if element.is_a?(Numeric)}
        total

    end

end

p [1, 2, 3, 4, 5, 6].sum
puts
class String
    def alphabet_sum
        alphabet = ("a".."z").to_a
        sum = 0
        self.downcase.each_char do |character|
            if alphabet.include?(character)
                numeric_value = alphabet.index(character) + 1
                sum += numeric_value
            end
        end
        sum
    end
end

puts "abc".alphabet_sum
puts "zzz".alphabet_sum

puts "Hi Ng'ethe".alphabet_sum
