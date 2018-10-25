# inject & reduce methods
# the same methods
# use when you're iterating over an areray and you need to
# keep track of some form of computation/operation from all elements
# prior from the current element you're on
# ex - rolling sum

#Example
nums = [10, 20, 30, 40]
sum = nums.reduce(0) do |previous, current|
    puts "The previous value is #{previous}"
    puts "The current value is #{current}"
    previous + current
end

p sum
# you don't need to give it an argument
nums2 = [3, 4, 5, 6, 7]
sum2 = nums2.inject {|previous, current| previous + current }

loft_sales = [120, 200, 100, 120, 640, 80]
p revenue = loft_sales.reduce(0) { |previous, current| previous + current }

# let's try using it for multiplication
# take note starting with 0 will lead to zeros
# thus add initial value to be 1
product = nums.inject(1) { |previous, current| previous * current }
product2 = nums2.reduce(1) { |previous, current| previous * current } # returns 0
p "Muliply #{nums} you will get #{product}"
p "Muliply #{nums2} you will get #{product2}"
