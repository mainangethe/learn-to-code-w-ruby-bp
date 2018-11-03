# Command Line Arguments
# referenced by using the constant 'ARGV' keyword
# returns the arguments as strings

ARGV.each do |argument|
    number = argument.to_i
    puts "The square of #{number} is #{number ** 2}"
end # end of block

# to run it in the cmd, you will need to enter the arguments as you ask the cmd to run the file
# ruby command_line_argumetns.rb 3 5 7 9 11 13 15(args)
