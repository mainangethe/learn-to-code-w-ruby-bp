# Regular expressions
# there are entire textbooks
# using symbols telling Ruby how to extract substrings from other strings


# the .start_with? method
puts "..... The .start_with? method ........."
phrase = "Ruby is amazing!"
puts phrase.start_with?("The") # checks if it starts with "The" so this is false
puts phrase.start_with?"Ruby" # true

# it is case sensitive
puts phrase.start_with?"ruby" # false
puts phrase.downcase.start_with?"ruby" # true
puts

# the .end_with? method

puts "....... The .end_with? method .........."
# checks if the phrase ends with the argument given
puts phrase.end_with?("zing!") #true
puts phrase.end_with?("amazing") # will fail, it should have the "!" symbol
puts

puts ">>>> CHALLENGE <<<<"
# Challenge custom .start_with? and .end_with? methods

def custom_start_with?(string, substring)
    array_of_strings = string.split(" ")
    array_of_strings.first == substring ? true : false
end # end of method

def custom_end_with?(string, substring)
    array_of_strings = string.split(" ")
    array_of_strings.last == substring ? true : false
end # end of method

p custom_start_with?(phrase, "Ruby")
p custom_end_with?(phrase, "amazing!")
puts

# Lecturer's solution
substr1 = "The"
substr2 = "Ruby"
substr3 = "zing!"
substr4 = "zing"

def lecturer_start_with?(string, substring)
    string[0, substring.length] == substring # no need to add bools, it will always return true /false
end
def lecturer_end_with?(string, substring)
    string[-substring.length..-1] == substring # no need to add bools, it will always return true /false
end
p lecturer_start_with?(phrase, substr2)
p lecturer_end_with?(phrase, substr4)
