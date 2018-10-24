5
##
## method 1 block format (Curly)
## Best for 1 line
##

1.times{  |count| puts "Ng'ethe is the Don! #{count}"}

##
## method 2 block format (do end)
## Best for multi-line
##
# 3.times do
#   puts "Ng'ethe is "
#   puts "the Don of Ruby"
# end

##
## Block variables
##

3.times do |i|
  puts "Number #{i + 1}"
  puts "I'm the man"
  puts "Yes I am "

end


# use th etimes method to output
# the ten multiples of 3
10.times do |count|
  count +=1 #deal with zero
  count *= 3 #multiply by 3
  puts "#{count}" #output the solution

end
