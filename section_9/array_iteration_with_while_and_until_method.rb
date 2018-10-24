#iteration over an array with while or until loop

animals = %w[Lion Elephant Rhino Leopard Buffalo]


#while loop
puts ".......... while loop ................"
i = 0 # 0, 1, 2, 3, 4
while i < animals.length #5
    puts "#{i} - " << animals[i]
    i += 1
end # end of while loop


# unti loop option
puts ".......... until loop ................"
i = 0
until i > animals.length

    puts "#{i} - " << animals[i]
    i += 1
end # end of until loop
