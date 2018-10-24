puts "Hey, what's your name?"
name = gets.chomp

puts "Thanks #{name}, Now tell me your age?"

age = gets.chomp.to_i

puts "Wow!"
puts " #{name}, #{age} is still fresh and tasty"
puts "Did you know, in 5 years, you will #{age + 5}"
