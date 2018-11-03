# Regexp Anchors
# An anchor is a specific symbol that ties a match
# with a specific point within the string like at the beginning / end of the string

poem = "99 bottles of beer of the wall, 99 bottles of beer"

# looks for a digit
p poem.scan( /\d/ ) # 4 numbers in the phrase
puts

# looks for one or more digits in a row
p poem.scan( /\d+/ ) # 2 instances
puts

# to specify the beginning of the string - we use \A symbol
p poem.scan( /\A\d+/ )
puts

# to specify the end of the string - we use \z symbol
# and you have to place at the end of the expression
p poem.scan( /eer\z/ )
puts

# let's evaluate our same restaurant menu using various backslash expressions.

lk_menu = "Pilau 80, Chapati 20, Mandazi 10, Chai 20."

p lk_menu.scan( /\./ ) # ["."]
p lk_menu.scan( /\s/ ) # [" ", " ", " ", " ", " ", " ", " "]
p lk_menu.scan( /\d/ ) # [ 8, 0, 2, 0, 1, 0, 2, 0 ]
