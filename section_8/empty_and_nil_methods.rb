p [1, 2, 3].empty? # predicate method, thus returns a boolean

p [].empty? #empty array

puts [nil, nil].empty? # only checks for length of an array

p [false, false, false].nil?

p 1.nil?

p 3.14.nil?

p [].nil?

p [nil, 2, 3, 4].nil?

letters = ("a".."j").to_a
p character = letters[4]
p character.nil?
