#statement modifiers or an inline modifier

number = 5000
verified = true

if number > 2500
    puts "Huge number!"
end

puts "Think it's a Huge number!" if number > 2500
puts "Definitely a Huge number!" if number > 2500 && verified
puts "Maybe it's a Huge number!" if number > 2500 || verified

x = 9
unless x > 10
    puts "X is not great than 10"
end

puts "x is NOT greater than 10" unless x > 10
