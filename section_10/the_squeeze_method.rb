# the squeeze method
# remove any character that occurs more than once in a row

sentence = "Thhe aardvark jumped   ovver the fence!"

puts sentence.squeeze # removed even "a" in aadvark which is accurate

# you can specify what the method should review
puts sentence.squeeze("v")

def custom_string(string)
    final = ""

    #convert string to array
    chars = string.split("") # string.chars

    chars.each_with_index do |char, index|
        #what is the next character in line
        #if it is the same skip, else take the char and add it to the final
        char == chars[index + 1] ? next : final << char
    end # end of do
    final
end # end of method
p custom_string(sentence)

tc1 = "TTommy"

p custom_string(tc1)

p custom_string(tc1) == tc1.squeeze #true if both work the same way
