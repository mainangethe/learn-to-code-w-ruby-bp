# An array is an ordered collection of objects.
# It is an object, though it acts as a container of other objects
# use the [] symbols
p [].class
numbers = []

# add 6 different numbers in an array
numbers = [4, 8, 15, 16, 23, 42]
p numbers
print numbers
puts
puts numbers #does it very differntly

# array of strings
toys = ["Teddy bear", "Super Soaker", "Board Game"]
puts toys # same case
p toys

#hybrid
things = [4, true, "Hello", 10.99]
p things

#can have duplicates
registration = [true, true, false, true, false]
p registration

# an array is still an objects

students = ["Ng'ethe", 25, true, "Sally", 23, true] #valid but it is bad practice

#multi-dimensional arrays
students2 = [ ["Ng'ethe", 25, true],
            ["Sally", 23, true],
            ["Nguhi", 23, true],
            ["John", 21]]

p students2
