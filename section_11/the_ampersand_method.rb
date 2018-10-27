# the ampersand symbol in an array returns values that are common
# in multiple arrays
# it doesn't mutate
# called Array intersection (isolates elements that are common in both arrays)

p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9] & [4,5,10] # ony the common numbers

# you can chain any number of arrays

# Challenge
def custom_intersection(arr1, arr2)
    final = []
    arr1.each { |value| final << value if (arr2.include?(value) && !final.include?(value)) }
    final
end # end of method


a = [1, 1, 2, 3, 4, 5]
b = [4, 5, 8, 9]

puts "... My CHALLENGE ANSWER ...."
p custom_intersection(a, b)

p custom_intersection(a,b) == a & b

# Lecturer's Solution
def lecturers_intersection (arr1, arr2)
    final = []
    arr1.uniq.each { |element| final << element if arr2.include?(element) }
    final
end # end of mehtod

p  custom_intersection(a,b) == lecturers_intersection(a,b)
