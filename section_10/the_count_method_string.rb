# puts "Hello World".count("H") # 1 time
#
# puts "Hello World".count("h") # no h exists
#
# puts "Hello World".count("lo") # counts each of them (either l or o)
#
# puts "Hello World".count("lW") # 4 times
#
# puts "Hello World".count("Wl") # order doesn't matter


## Challenge
## Return the number of total times that
## the search chars are in the string

def custom_count(string, search_characters)
    total_chars = 0
    #
    search_characters.each_char do |sc|
        # split the string and review letter & sc
        letters = string.each_char { |letter| letter == sc ? total_chars += 1 : next }

    end # end of do (search chars)

    total_chars
end# end of method

tc1 = "Hello World"
sc = ""
p custom_count(tc1,sc)


## lecturer solution

def lecturer_count(string, search_characters)
    count = 0
    string.each_char { |char| count += 1 if search_characters.include?(char) }
    count
end # end of method

puts lecturer_count("Hello World", "ol")
