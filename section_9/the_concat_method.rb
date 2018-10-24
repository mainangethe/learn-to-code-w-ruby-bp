#concat joins multiple arrays
# mutates by default
#
# p [1, 2, 3] + [4, 5]
#
# p [1, 2, 3].concat([7, 8])

nums = [9, 10, 11]
nums2 = [12, 13, 14]
# nums2 = nums.concat([12, 13, 14])

# def custom_concat(array1, array2)
#     array2.each do |num|
#         array1 << num
#
#     end# end of do`
#     p array1
# end # end of method

def custom_concat(arr1, arr2)
    arr2.each { |num| arr1 << num }
    arr1
end # end of method
p custom_concat(nums, nums2)
