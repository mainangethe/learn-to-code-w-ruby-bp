# The Union Method
# Used to combine arrays and exclude duplicates

p [1, 2, 1, 3] | [3, 4, 5, 5, 4] | [6, 7, 7, 5, 4, 8, 9, 2, 10]

# it is a method without a name
p [1, 2, 1, 3].|([3, 4, 5, 5, 4])

# challenge
# define a custom method
puts
puts "........ THE CUSTOM UNION METHOD ........."
tc1 = [1, 2, 1, 3]
tc2 = [3, 4, 5, 5, 4]
tc3 = [6, 7, 7, 5, 4, 8, 9, 2, 10]

def custom_union(arr1, arr2)
    final = []

    arr1.each do | elem |
        final << elem unless final.include?(elem)
    end # end of do - arr 1
    arr2.each do | elem |
         final << elem unless final.include?(elem)
    end # of do - arr 2

    final.sort

end # end of method

p custom_union(tc1, tc3)

# lecturer's solution - refactored like steriods

def lecturer_union(arr1,arr2)
    arr1.dup.concat(arr2).uniq.sort
end # end of method

p lecturer_union(tc1,tc3)
