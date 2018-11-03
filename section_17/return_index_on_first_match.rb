# RegExp

# First Syntax
# =~ (Should return the index position of the first match)

# A regex is an object
puts //.class

phrase = "Ruby is Amazing!"
p phrase =~ /is/ #5

phrase_2 = "The Ruby Programming Language is amazing"
puts phrase_2 =~ /T/ # 0
puts phrase_2 =~ /R/ #4
# always returns the very first
# let's look at m
puts phrase_2 =~ /m/ #15

# you can interchange the expressions
puts /m/ =~ phrase #9 stlil worked

# you can use special characters
puts phrase =~ /!/ # 15

# "." is a wildcard which means find any character in the phrase
puts phrase =~/./ # 0 why? 'T' is a char and since it was found, it returns

p phrase_2 =~ /x/ #nil - if nothing is found, returns a nil

# always returns the start when it finds a match
puts phrase_2 =~ /ing/
