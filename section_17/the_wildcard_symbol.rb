# the wildcard symbol in a regexp
# the . symbol

phrase = "The Ruby Programming Language version 2-3-3 is amazing and awe-inspiring."

# wild card means any valid character it finds
p phrase.scan(/./)
puts

# we use the wildcard to check if it can find in a string
puts phrase.scan( /.am/ ) # 2 instances "ram" and "am"
puts

puts phrase.scan( /.ing/ ) # 3 instances "ming", "zing" and "ring"
puts

puts phrase.scan( /a.e/ ) # 2 instances "age", "awe"
puts

puts phrase.scan( /Rub./ ) # 1 instance "Ruby"
puts

puts phrase.scan( /r.b./ ) #1 instance any char in between rand b and b onwards
puts

puts phrase.scan( /\d.\d.\d/ )
