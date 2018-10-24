num = 1000


if num.respond_to?("length") # will not raise an error
    p num.length
end

puts "Hello".respond_to?("length")
puts "Hello".respond_to?("size")
puts "Hello".respond_to?("upcase")

puts "Hello".respond_to?("odd?")

puts "Hello".respond_to?(:length) #using symbols
puts "Hello".respond_to?(:downcase)

puts 1.respond_to?(:next) #symbols are lightweight
