# The .class method
# Available on all ruby objects
# Tells us the class the object came from

p 5.class #Fixum
p 8.class #Fixnum
p 5.class == 8.class # true

p 9999999999999999999999999999999999.class

p 3.14.class
p 99.99.class
p -13.25.class

puts "Hello".class

puts [1,2,3].class
puts Hash.new(0).class

puts true.class
puts false.class

puts nil.class

puts (0..9).class

puts //.class

puts lambda {}.class
puts Proc.new {}.class

puts Time.new.class
