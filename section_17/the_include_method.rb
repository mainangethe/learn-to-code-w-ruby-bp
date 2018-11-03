# the .include? method
phrase = "Ruby Programming Language is amazing!"
str1 = "The"
str2 = "Ruby"
str3 = "zing!"
str4 = "zing"

puts phrase.include?"ze"
puts

puts ">>>>>>>>> CHALLENGE <<<<<<<<<<"
def custom_include?(string, substring)
    i = 0
    final = false
    while i <= string.length do
        if string[ i, substring.length ] == substring
            final = true
            break
        else
            i +=1
        end
    i +=1
    end #end of block
    final
end # end of method

p custom_include?(phrase, " ")

# lecturer's solution
def lecturer_include?(string, substring)
    string.chars.each_with_index do |chars, index|
        return true if string[index, substring.length] == substring
    end # end of block
    false
end # end of method

p lecturer_include?(phrase, str4)
