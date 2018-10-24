# delete removes character you specify it to remove

# example 1
# puts "Hello world!".delete("!")
#
# # can remove multiple chars
# puts "Hello world!.".delete("!.")
#
# # removes every instance of the letter
# puts "Hello world".delete("l")
#
# # case sensitivity does matter
# puts "Hello world".delete("h")

## CHALLENGE - Unable to solve
# custom method that works like the delete function

def custom_delete(string, to_delete)
    final = ""
    length = to_delete.length
    string.chars.each_with_index do |char, index|
        sequence = string[index,length]
        puts sequence
        final << char unless to_delete == sequence
        # has a logical issue for the last char if multiple to_delete are present
    end # end of do
    final
end # end of method

tc1 = "Hello World!."

p custom_delete(tc1, "l")

def lecturer_delete(string, delete_characters)
    new_string = ""
    string.each_char do |char|
        new_string << char unless delete_characters.include?(char)
    end # end of do
    new_string
end # end of method

p lecturer_delete(tc1, "l")
