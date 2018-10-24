# .first & .last methods

arr = [1, 3, 5, 7, 9, 15, 21, 18, 6]

p arr.first
p arr.last

#without any variables, loads the default first & last items

p arr.first(3) # list the first 3 elements
p arr.last(4) # list the last 4 elements

p arr.first(1) # now it is an array
p arr.last(1) # always returns an array if give it a value


array1 = %w[Papoose Weezy Jay Diddy Mavado KRodgers Sisqo]

# def custom_first(array, position = 0)
#     #if position is 0 retrieve the element minus the array
#     if position != 0
#         array2 = [array[position]]
#         return array2
#     else
#         return array[position]
#     end
# end

# def custom_last(array, position = 0)
#     if position != 0
#         array2 = [array[array.length-position]]
#         return array2
#     else
#         return array[array.length-1]
#     end
#
# end

#p array1[0..4]



p custom_last(array1,2)

# lecturers position
def custom_first(arr, num = 0)
    return arr[0] if num == 0
    arr[0, num]
end

def custom_last(arr, num = 0)
    return arr[-1] if num == 0
    arr[-num..-1]
end


p custom_first(array1, 0)
p custom_last(array1,0)
