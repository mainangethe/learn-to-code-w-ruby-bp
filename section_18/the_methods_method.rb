# The .methods method
# Available for all objects in ruby
# allows you to see all the methods available to a class

fixnum_methods = 5.methods.sort
float_methods = 3.14.methods.sort
common_methods = fixnum_methods & float_methods
fixnum_exclusive_methods = fixnum_methods - float_methods
float_exclusive_methods = float_methods - fixnum_methods
p common_methods
puts fixnum_exclusive_methods
puts

puts float_exclusive_methods
puts

array_methods = [].methods.sort
hash_methods = {}.methods.sort
p array_methods
p hash_methods
puts

p ah_common_methods = array_methods & hash_methods
p ah_common_methods.length
p a_exclusive_methods = array_methods - hash_methods
p h_exclusive_methods = hash_methods - array_methods
p a_exclusive_methods.length
p h_exclusive_methods.length
