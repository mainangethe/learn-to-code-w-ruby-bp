# zip method
# combines one or more arrays while retaining their index
# very good at combining multi-arrays
# returns a nested array
# doesn't mutate the original arrays
names = ["Ng'ethe", "Simon", "Maun"]
registrations = [true, false, false]

# p names.zip(registrations)

#can take multiple arguments
# p [1, 2, 3].zip( [4, 5, 6], ["A", "B", "C"] )

#let's create a custom one that doesn't mutate either
def custom_zip(arr1, arr2)
    new_nested = []
    arr1.each_with_index do | arr1_value, arr1_index |
        arr2.each_with_index do | arr2_value, arr2_index |
            if arr1_index == arr2_index
                arr3 = [arr1[arr1_index], arr2[arr2_index]]
                new_nested << arr3
            end # end of if
        end # end of do (array 2)
    end # end of do (array 1)
    new_nested
end # end of method

# lecturer's solution
def lecturer_zip(arr1,arr2)
    final = []
    arr1.each_with_index { |value, index| final << [value, arr2[index]] }
    final
end

p custom_zip(names, registrations)
p lecturer_zip(names, registrations)

loft_kitchen_food = %w[Pilau Githeri Madondo Ndengu]
loft_kitchen_price = [80, 70, 80, 80]
loft_kitchen_menu = loft_kitchen_food.zip(loft_kitchen_price)
p loft_kitchen_menu # [["Pilau", 80], ["Githeri", 70], ["Madondo", 80], ["Ndengu", 80]]
