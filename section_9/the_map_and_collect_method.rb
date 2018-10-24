## all about map and collect methods
## They are the same, just naming differences
## ideal to use map

nums = [1, 2, 3, 4, 5]
squares = []
nums.each { |num| squares << num **2 }

p squares

#alternative option
squares2 = nums.map {|num| num ** 2 }
p squares2
squares3 = nums.collect {|num| num ** 2}
p squares3


fahr_temps = [105, 73, 40, 18, -2]

celsius_temps = fahr_temps.map do |temp|
    minus_32 = temp - 32
    minus_32 * (5.0 / 9.0).round(2)

end #end for do
p celsius_temps

results = [1, 2, 3].map { |num| num ** 2}
p results

numbers = [3, 8, 11 , 15, 89]

# writes a cubes method that accepts an array
# and returns an new array.
# the array will have all values cubed for each

def cube_array_nums(array_of_numbers)
    p results = array_of_numbers.map { |num| num ** 3}
end# end of method

cube_array_nums(numbers)

nums = [1,2,3,4]
cube_array_nums(nums)
