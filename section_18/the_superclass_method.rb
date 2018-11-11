# The super class
# A superclass is the class that a current class inherits from.
# Inheritance follows an "is-a" structure

# the .superclass method is called on a class.
# it retunrs the parent class that the current class inherits from

# the class that inherits from the superclass is called the subclass
# Every class in Ruby (except Basic Object at the top of the hierarchy)
# has at least one(1) superclass

p 5.class.superclass
p 99.99.class.superclass
p 44444444444.class.superclass
p "heo".class.superclass
p [].class.superclass
p {}.class.superclass
p Proc.new{}.class.superclass
p Time.new.class.superclass
p //.class.superclass

puts

# the ancestors method on classes
# provides the entire hierarchy all the way to the top
# returns an array with all the classes it inherits from
p 5.class # Fixnum
p 5.class.superclass # Integer
p 5.class.superclass.superclass # Numeric
p 5.class.superclass.superclass.superclass # Object
p 5.class.superclass.superclass.superclass.superclass #Basic Object
p 5.class.superclass.superclass.superclass.superclass.superclass #nil nothing higher
puts

puts ">>> ancenstors method <<<<"
p 5.class.ancestors
p 3.14.class.ancestors
p [].class.ancestors
p (3..10).class.ancestors
