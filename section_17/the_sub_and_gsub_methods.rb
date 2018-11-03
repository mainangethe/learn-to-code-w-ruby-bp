# the .sub and gsub methods in regex
# it can replace certain substrings
# they both have bang methods

puts "......... The Sub Method .............."
puts "whimper".sub("m", "s") # whisper
puts

# the .sub method only updates the first occurrence of the string
puts "whimper mmmmmm".sub("m", "s") # whisper mmmmm
puts

puts "wordplay".sub("w","sw") #swordplay
puts

#characters don't have to be the same length
puts "wordplay".sub("word", "sword")
puts

word = "aspirin"
puts word.sub("in", "ing") # aspiring
p word # doesn't overwrite the original varibable
puts

# gsub - Global Substitution method
# replaces all matched instances it finds
puts "......... The Gsub Method .............."
puts "an apple".gsub("a", "-") #-n -pple
puts

puts "555 555 1234".gsub(" ", "") #removes all whitespaces
puts

# get's more complicated as we have more characters we want to replace
# you have to chain the method until it removes all unwanted chars
puts "(555)-555 1234".gsub(" ", "").gsub("(", "").gsub("-","").gsub(")", "")
puts

# using the regexp inside the gsub
puts "(555)-555 1234".gsub( /[\s\(\)-]/, "")
