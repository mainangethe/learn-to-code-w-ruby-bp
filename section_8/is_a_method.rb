#every object is based on a class (blueprint)

p 1.class #fixnum blueprint for integers

p "3848".class #string class

p 999999999999999.class #bignum class
p true.class #TrueClass
p false.class #falseClass
p nil.class #nilClass
p [1,2,3].class #Array class

puts

puts 1.is_a?(Fixnum) # Ruby is 1 a ?

puts ["a", "b"].is_a?(String)

#classes also inherit from other classes
# basic object
#-- object
# ---

# for 1 & 99999999999 have a relationship
# basic object - Interger
# Fixnum & Bignum object


p 1.is_a?(Integer)
p 999999999999999999999999.is_a?(Integer)
p 1.is_a?(Object)
p 1.is_a?(BasicObject)
