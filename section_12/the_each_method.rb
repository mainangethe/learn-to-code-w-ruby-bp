# the each and each_pair methods
# works the same way as called in an array
# it iterates over each keyvalue pair in a hash object
# you can also give it one or multiple variables while extracting the pairs
# when you use 1 variable, it joins the key value pair into an array
# when used with multiple variables, the fisrt one will be treated as the key,
# and the latter its respective value
# the each_pair method works in the same fashion but is very old and advised not to use

# example
east_african_capitals = {Kenya: "Nairobi", Tanzania: "Dodoma", Uganda: "Arusha", Burundi: "Bujumbura"}

p east_african_capitals[:Kenya] #Nairobi

puts "... using the each method with 2 variables ...."
# using the each method
east_african_capitals.each { |country, city| puts "The capital of #{country} is #{city}"}

puts "... using the each method with 1 variable ..."
east_african_capitals.each { |pair| puts "Country & Capital City : #{pair}" }

# you can use array standards to manipulate the 1 variable output
east_african_capitals.each { |pair| puts "Only Countries: #{pair[0]}"}
east_african_capitals.each { |pair| puts "Only Capital Cities: #{pair[1]}"}

# you can also extract individual variables even when using the 2 variables
east_african_capitals.each{ |key,value| puts "Key: #{key}"}
east_african_capitals.each{ |key,value| puts "Value: #{value}"}

# the each_pair method does the same, but is rarely used and advised against using
puts ">>>>>> Repeating the above using each_pair <<<<<<<<"
east_african_capitals.each_pair {|country, city| puts "The capital of #{country} is #{city}"}
east_african_capitals.each_pair {|pair| puts "Country & CC: #{pair}"}
east_african_capitals.each_pair {|pair| puts "Country: #{pair[0]}"}
east_african_capitals.each_pair {|pair| puts "CC: #{pair[1]}"}
east_african_capitals.each_pair {|key,value| puts "Country: #{key}"}
east_african_capitals.each_pair {|key,value| puts "City: #{value}"}
