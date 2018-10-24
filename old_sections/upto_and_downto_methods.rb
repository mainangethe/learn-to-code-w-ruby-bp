##
## The Upto & Downto methods are for integers
##

##
## Downto method
##

5.downto(1) #countsdown

#also accepts blocks
5.downto(1) { |count| puts "countdown #{count}" }

5.downto(0)do
  |current_number|
  puts "Countdown to #{current_number}"
end

puts "LIFT OFF!!"
puts "HOOOOORAAAY!!"

##
## Upto method
##
5.upto(10){ |count| puts "Year #{count}"}
99.downto(0){ |count| puts "#{count} Tuskers I've taken"}
