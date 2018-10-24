# def fizzbuzz(num)
#     case num
#     when(num % 15) == 0
#         puts "#{num} - Fizzbuzz"
#     when(num % 3) == 0
#         puts "#{num} - Fizz"
#     when(num % 5) == 0
#         puts "#{num} - Buzz"
#     else
#         return nil
#
#     end #end of case
#
# end #end of method


# def fizzbuzz(user_num)
#     count = 1
#
#     while count <= user_num
#         if(count % 5 == 0) && (count % 3 == 0)
#             puts "#{count} - Fizzbuzz"
#             count += 1
#         elsif(count % 3 == 0)
#             puts "#{count} - Fizz"
#             count += 1
#         elsif(count % 5 == 0)
#             puts "#{count} - Buzz"
#             count += 1
#         else
#             puts "#{count}"
#             count += 1
#         end #end of if
#     end #end of while
# end #end of method

## REFACTORING
def fizzbuzz(user_num)
    count = 1

    while count <= user_num
        if count % 15 == 0
            puts "#{count} - Fizzbuzz"

        elsif(count % 3 == 0)
            puts "#{count} - Fizz"

        elsif(count % 5 == 0)
            puts "#{count} - Buzz"

        end #end of if
        count += 1
    end #end of while
end #end of method

# fizzbuzz(2) # - not diviisble by 3 / 5
# fizzbuzz(6) # - not diviisble by 5
# fizzbuzz(10) # - not diviisble by 3
fizzbuzz(15) # - divisible by both 3 and 5
