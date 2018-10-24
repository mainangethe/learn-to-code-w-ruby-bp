# longest string challenge
# write a longest_word method that accepts a string as it's only argument
# the method should return the longest word in a sentence
# if two words are tied for max length, the method should reurn the last word in the sentence with that length.


tc1 = "Bobby loves big scary kangaroos"
tc2 = "Ruby is my favorite language"

def longest_word(sentence)
    #string or not
    unless !sentence.is_a?(String)
        words = sentence.split
        return nil if words.empty?

        max = words[0]
        words.each { |word|  max = word if word.length >= max.length }
        max
    end # end of unless
end # end of method

p longest_word(tc2)
