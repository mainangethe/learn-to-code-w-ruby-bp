# the select method
# selects what I am looking for
# inside the select method has to have the condition that returns a T or F

grades = [80, 95, 13, 76, 28, 39]

my_options = grades.select { |number| number >= 75 }

p my_options


words = %w[level selfless racecar dinosaur anna civic]
palindromes = words.select { |word| word == word.reverse }

p palindromes
