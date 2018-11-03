a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map { |num| num ** 3}
b_cubes = b.map { |num| num ** 3}
c_cubes = c.map { |num| num ** 3}

p a_cubes
p b_cubes
p c_cubes

# the block is starting to repeat itself
# a proc is another ruby object
# a saved block
# The key difference is a block is not an object
    # you can't save a block to a variable
    # you can't call any methods on blocks
    # blocks disappears after executing the method
# Use the proc class "Proc" to create a new proc
# in a method, you have to use the "&" ampersand symbol

cubes = Proc.new { |number| number ** 3 }
squares = Proc.new { |number| number ** 2}

puts "..... with the proc object ......."
ap_cubes = a.map(&cubes)
bp_cubes = b.map(&cubes)
cp_cubes = c.map(&cubes)
b_squares = b.map(&squares)
p ap_cubes
p bp_cubes
p cp_cubes
p b_squares

#refactoring
 ap2_cubes, bp2_cubes, cp2_cubes = [a, b, c].map { |array| array.map(&cubes) }
puts ".... cubes refactored.. and pragmatic..."
p ap2_cubes
p bp2_cubes
p cp2_cubes


# Example 2
currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95}
to_kenya_shillings = Proc.new { |currency| currency * 103.4}

p currencies.map(&to_euros)
p currencies.map(&to_kenya_shillings)

# Example 3
ages = [10, 60, 83, 30, 43, 25]

is_old = Proc.new do |age|
    age > 55 # returns a boolean
end

p ages.select(&is_old)
p ages.reject(&is_old)
