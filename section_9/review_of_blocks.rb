3.times { |count| puts "Hello there #{count + 1} " }

5.times do |count|
    square = count * count
    puts " The current number is #{count}"
    puts "It's square is #{square}"
end

#variables in a block get thrown as soon as it is done executing
