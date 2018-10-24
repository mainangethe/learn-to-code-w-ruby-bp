i = 5
while i > 0
    puts "This message will self destruct in #{i}"
    i -= 1 #count
end # end for while

# status = true
# while status
#     #ask for input
#     print "Please enter username: "
#     username = gets.chomp.downcase
#
#     print "Please enter password: "
#     password = gets.chomp.downcase
#
#
#     ## We need to evaluate input
# #     if (username == "ngethe" && password == "changeme")
# #         puts "Welcome Mr. President. Here are the Launch Codes.."
# #         puts "SOMALIA - AD8E7DAFHUEKL"
# #         puts "UGANDA - KE8E7DAFHUEKL"
# #         puts "SOUTH SUDAN - 34F8E7DAFHUEKL"
# #         status = false
# #     elsif (username == "quit" || password == "quit")
# #         puts"Goodbye! Better luck next time!"
# #         status = false
# #     else
# #         puts "Incorret combination, try again or enter 'quit' to exit the program. "
# #     end# end of if evaluations
# # end# end of while

## while is best when we don't know the total number of iterations
i = 2
while i.even?
    puts i
    i+= 1
end
