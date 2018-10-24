if 1 < 2
    puts "Yes, it is!"

else
    puts "No, it's not"
end

#more lightweight version
puts 1 < 2 ? "Yes it is! :)" : "No it's not :("

if "Yes".downcase == "yes"
    puts "The two are equal"
else
    puts "The two are not equal"
end

puts "No".downcase == "yes"? "Same :)" : "Nay! :()"

def even_or_odd(num)
    num.even?   ? "Welcome Even Number" : "Odd Number Detected!"
end

p even_or_odd(2)
p even_or_odd(33)

pokemon = "Pikachu"
# if pokemon == "Charizard"
#     puts "Fireball"
# else
#     puts "That is not Charizard"
# end

#refactored

puts pokemon == "Charizard" ? "Fireball!!" : "This is not Charizard"

#refactored in a method
def check_pokemon(character)
    character == "Charizard" ? "Fireball!!" : "This is not Charizard"

end

p check_pokemon("Pikachu")
p check_pokemon("Charizard")
