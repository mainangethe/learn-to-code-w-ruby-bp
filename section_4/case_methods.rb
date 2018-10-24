puts "hello".capitalize # only the first letter

puts "heLLo".capitalize #removes other capitalize beyond the first letter

puts "Hello".capitalize #if all ok, ignore and return the same

puts "Hello 56".capitalize

puts "Hello world".capitalize # only the first letter of the whole string

#upcase method
puts "ngethemaina".upcase
puts "blah blah blah".upcase

lcase = "I'm patient"
upcase = lcase.upcase
puts lcase
puts upcase

puts upcase.downcase

# swap case method (switches the cases for the whole string)
p lcase.swapcase

#works like a mirror
puts "Ruby".reverse
puts "21344".reverse

puts "ruby is fun".reverse.capitalize.swapcase.length
