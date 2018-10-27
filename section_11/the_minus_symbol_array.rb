# removing array items that exist in another array from our existing array
# using the minus symbol
p [1,1, 2, 2, 3, 3, 3, 3, 4, 5] - [2,3]
# syntatical sugar - shortened way in Ruby

a = [1,1, 2, 2, 3, 3, 3, 3, 4, 5]
b = [2,3]

# challenge - custom subtract method
# should not mutate
puts "..........Custom Subtract Method..........."
def custom_substraction(arr1, arr2)
    final = []
    arr1.each {|value| final << value unless (value == arr2[0] || value == arr2[1])}
    final
end # end of method

p custom_substraction(a,b)


# lecturer's solution
def lecturer_substraction(arr1,arr2)
    final = []
    arr1.each{ |value| final << value unless arr2.include?(value)}
    final

end
p lecturer_substraction(a,b)
