words = "Hello World"

#using the each_char method

words.each_char { |char| puts char }

name = "Ng'ethe"
p name.split("")
p name.chars # same thing

name_letters = name.chars #array object

name_letters.each { |letter| puts "#{letter} is awesome!"}
