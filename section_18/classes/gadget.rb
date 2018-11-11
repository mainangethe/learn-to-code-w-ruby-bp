# Defining a new class
# we use the class Keyword
# Practice name should be Uppercase Camel format #class SmartPhone etc.

class Gadget
end # end of class

puts Gadget.superclass
puts

# defining objects
# we refer to the class and use the .new method

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts phone.class
puts

puts laptop # different memory address
puts phone.object_id # different memory address
puts microwave # different memory address
puts

# Available methods without adding anything
p phone.methods.sort
puts

puts microwave.is_a?(Gadget)
puts microwave.is_a?(Object)
puts microwave.is_a?(BasicObject)
puts

puts laptop.nil?
puts

puts phone.respond_to?(:class)
puts phone.respond_to?(:methods)
puts phone.respond_to?(:length)
puts

# Object aliases
nokia = phone # same object
p nokia.object_id
p nokia.object_id == phone.object_id

p nokia.class.ancestors
p nokia.class.superclass
