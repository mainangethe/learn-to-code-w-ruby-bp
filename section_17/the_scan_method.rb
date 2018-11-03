# the .scan method
# checks a string
# takes in a regexp
# returns all of the matches it finds in an array

voicemail = "I can be reached at +254-780-526-492 or mainangethe@gmail.com"
p voicemail.scan(/e/).length # be - 1, reached - 2, mainangethe - 2
p voicemail.scan(/re/).length # reached - 1

# if we want to find any characters instances in my expression
# we use the [] square brackets
p voicemail.scan(/[re]/).length # r- 2 instances , e - 5 instances

#this is case sensitive
p voicemail.scan(/R/) # nothing found.

# \d means - any single occurences of a digit you find
p voicemail.scan( /\d/ )

# \d+ means one or more occurences of a digit(s) in a row
p voicemail.scan( /\d+/ )

# regex can accept a block (do-end or {})
voicemail.scan( /\d+/ ) { |digits_match| puts digits_match.length }
