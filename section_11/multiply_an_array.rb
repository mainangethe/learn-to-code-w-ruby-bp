# multiplying arrays
# we use the "*" asterix symbol

puts 4 * 3 # should be = 12

# when used on a string it will simply repeat it based on the second value

puts "Ruby is HOT!" * 3 # RIHRIHRIH

# same case happens in an array
# it returns a new array with all the values repeated times the second value
p [1, 2, 3, 4, 5] * 5
# the length of the new value can always be known (.length * second value)
p ["Ruby", "Ng'ethe", "Oct"] * 3
# p [1, 2, 3, 4, 5] * 5 length will be 5(previous length) * 5 = 25

new_a = [1, 2, 3, 4, 5] * 5
p new_a.length

# challenge = recreate the functionality without using the asterix
# return a new array

def custom_multiply(array, number)
    starting_point = 0
    final = []
    until starting_point == number do
        final << array # will be nesting - not the same solution
        starting_point += 1
    end
    final
end # end of method
tc1 = ["Ruby", "Ng'ethe", "Oct"]
tc2 = ["Ruby is Hot"]
tc3 = [1, 2, 3, 4]
p custom_multiply(tc1, 2)
p custom_multiply(tc2, 4)
p custom_multiply(tc3, 9)

# lecturer's solution
# using the times method and looping through the array

def lecturer_multiply(array, number)
    result = []
    number.times { array.each{ |element| result << element } }
    result
end # end of method

p lecturer_multiply(tc1,2)
p custom_multiply(tc1,2)
