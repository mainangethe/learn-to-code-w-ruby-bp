# the .index & rindex methods on a string
# returns nil if nothing is found

# # example
fact = "I am very handsome."
#
# # check for first "I"
# p fact.index("I")
#
# # check for "H"
# p fact.index("h")
#
# # if nothing is found
# p fact.index("Z")
#
# # you can check for multiple chars
# p fact.index("am")
#
# # if multiple chars exist it will return the first index found
# p fact.index("e")
#
#
# # you can assign an index for where the search to start
# p fact.index("e",7) # this finds the next e at index 17
#
# #NB - if the index for where the search starts also has a match, it ends there
# p fact.index("e",6) # returns 6, because "e" also exists there
#
# ## r index - reverse index does the same only starts from the last char of the string
#
# p fact.rindex("e") #from the beginning - 17, though searching from the last

## Challenge - unable to solve

def custom_index(string, search_characters)
    return nil unless string.include?(search_characters)
    length = search_characters.length
    string.chars.each_with_index do |letter, i|
        seq = string[i, length]
        return index_found = i if seq == search_characters
    end # end of do
end # end of method

p custom_index(fact,"I")

## LECTURER SOLUTION ##
# since we want the index, best change the strings to an array
# then call each_with_index which keeps track of the index

def lecturer_index(string, substring)
    return nil unless string.include?(substring)
    length = substring.length
    string.chars.each_with_index do |char, index|
        sequence = string[index, length] # 2nd variable tells it number of chars to return
        return index if sequence == substring
    end # end of do
end #end of method

# p lecturer_index("I am very handsome.", "")
