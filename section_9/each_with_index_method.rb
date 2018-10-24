# colors = %w[Red Blue Green Yellow]
#
# colors.each_with_index do |color, index|
#     puts "Moving on to the next one #{index}"
#     puts "The current color is #{color}"
# end #do method

# write a loop that ierates over a numeric array
# output the product of each number and it's index position
# fives = [5, 10, 15, 20, 25]
#
# def number_times_index(array_of_numbers)
#
#     array_of_numbers.each_with_index do |number, index|
#         multiply_w_index = number * index
#         puts
#         puts "Index #{index}"
#         puts "We have Number - #{number}"
#         puts "The two multiplied together is #{multiply_w_index}"
#         puts
#     end # do method end
# end # method end
#
# number_times_index(fives)

##
## Challenge Warm Up
##
## Array [1, 2, 3, 4, 5] - Write a loop that gives the sum of
## the products of each index and it's value

# one_to_five = [1, 2, 3, 4, 5]
# multiply_array = []
# sum = 0
# one_to_five.each_with_index do |number, index|
#     multiply_w_index = number * index
#     sum += multiply_w_index
#     puts
#     puts "Index #{index}"
#     puts "We have Number - #{number}"
#     puts "The two multiplied together is #{multiply_w_index}"
#     puts "The current sum is = #{sum}"
# end # do end
#
# p sum


##
## Challenge 2
##
## Array [-1, 2, 1, 5, 7, 3]
## Prints the product of the element and it's index pos
## if the index position is greater than the element
## create this within a method

random_nums = [-1, 2, 1, 2, 5, 7, 3]

def print_only_index_greater (array_of_numbers)

    array_of_numbers.each_with_index do |number, index|

        #check which is greater (index / number)
        # unless number > index
        result = number * index
        #     puts "#{number} is less than #{index}"
        #     puts "Product of #{number} and #{index} is #{result}"
        #     puts
        # end # unless end

        ## Refactored
        puts "Match Found: #{number} < #{index}, Product - #{result}" unless number > index

    end# end of do
end# end of method

print_only_index_greater(random_nums)
