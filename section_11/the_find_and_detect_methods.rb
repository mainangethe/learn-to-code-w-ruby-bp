# the .find & .detect methods
# they are identical
# return the first value of met condition in a block

words = %w[dictionary refrigerator platypus microwave]

p words.select { |word| word.length > 10 } #refrigerator

p words.select { |word| word.length > 8 } #dict refrig, micr

## using the find method
#retuns the first one that matches the condition
puts "........... FIND METHOD............"
p words.find { |word| word.length > 8} #dic

puts "............DETECT METHOD.........."
p words.detect { |word| word.length > 8 } #dictionary

lottery = [4, 8, 16, 15, 23, 42]

# remove the first odd number found
p lottery.find { |num| num.odd? } # 15
p lottery.detect { |num| num.odd? } # 15

# if you want to get the last odd number found?

p lottery.reverse.find { |num| num.odd?}

# airbnb style guide advices using find
