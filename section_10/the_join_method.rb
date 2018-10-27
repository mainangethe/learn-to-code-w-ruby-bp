# the .join method in an array
# returns a string
# opp of the split method on a string

names = %w[Andrew Neha Arjun]

p names.join

# you can specify the delimiter as well

puts

p names.join("-") #dash delimiter
puts
p names.join(" ") # space delimiter

puts
p names.join("! ") #multi char delimiter

# best to use this with an array with chars
letters = %w[h i t t h e r o a d j a c k]
p letters.join("")

# emulate the join method

def custom_join(array, delimiter = "")
    word = ""
    if array.is_a?(Array)
        array.each_with_index{ |letter, i| i < (array.count-1) ? word << letter << delimiter : word << letter }
        return word
    end # end of if
    return nil
end # end of method

p custom_join(names, " ")

# lecturer's solution
def lecturer_join(array, delimiter = "")
    string = ""
    last_index = array.length-1
    array.each_with_index do |elem, index|
        string << elem # all instances we need to add the elem
        string << delimiter unless index == last_index
    end # end of do
    string
end # end of method

p lecturer_join(names, "!--!")
