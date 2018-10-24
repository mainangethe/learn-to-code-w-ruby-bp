# the include method can be used in an array
# .include?
# predicate methods always return a boolean (T / F)

numbers = [1, 2, 3, 4, 5]

p numbers.include?(2)

fruits = %w[Apple Banana Kiwi Grape]

p fruits.include?("watermelon")
