# the backslash character in a regexp

paragraph = "This is my essay. I deserve an A.  rank it a 5 out of 5."
paraghraph2 = "This         is my essay. I deserve an A.  rank it a 5 out of 5."

p paragraph.scan( /./ ) # any valid character
puts

puts paragraph.scan( /\./ ) # looks for "." fullstops
puts

puts paragraph.scan( /d/ ) # looks for d
puts

puts paragraph.scan( /\d/ ) # any digit
puts

p paragraph.scan( /\D/ ) # means any non-digit
puts

p paragraph.scan( /\s/ ) # looks for space (whitespace char)
puts

p paragraph.scan( /\s+/ ) # looks for one or more whitespace in a row
p paraghraph2.scan( /\s+/ ) # will return the same as above
puts

p paragraph.scan( /\s+/ ).length
p paraghraph2.scan( /\s+/ ).length
puts

p paragraph.scan( /\S/ ) # Non whitespace characters
