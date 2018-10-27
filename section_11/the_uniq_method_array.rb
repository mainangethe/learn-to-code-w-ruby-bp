# this method removes the duplicates in an array

numbers = [1, 2, 3, 2, 7, 7, 8, 9, 1]

p numbers.uniq #no duplicates

#also has a bang "!" method that mutates

def custom_uniq(array)
    final = []
    array.each { |char| final << char unless final.include?(char) }
    final
end # end of method

p custom_uniq(numbers)
# confirm if we are ok
p custom_uniq(numbers) == numbers.uniq # true
