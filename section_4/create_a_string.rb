puts "Hi there, I'm a string"
puts "I can also include characters and numbers: # $ ! @ 5 9"

name = "Ng'ethe"
revenue = "$130 dollars"
puts name, revenue

space = " "
p space.length

puts

#empty strings

empty = ""
p empty.length
puts empty.class
puts name.class
p space.class
puts revenue.class

## using the new class

name = String.new( "I AM A MONSTER")
p name

## to_s
p 5.to_s
