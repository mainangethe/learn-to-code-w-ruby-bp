prizes = %w[Gold Silver Pyrite Bronze Mbao Pyrite]

i = 0
while i < prizes.length
    current = prizes[i]
    if current == "Pyrite" or current == "Mbao"
        puts "Fake Found!"
        break
    else
        puts "#{current} is not fake"
    end

    i += 1
end #end of while


numbers = [1, 2, 3, "Hello", 5, 6, 7, 8]

numbers.each do |num|
    if num.is_a?(Fixnum)
        puts "The square of #{num} is #{num ** 2}"
    else
        puts "This array has an invalid number - #{num}"
        puts " Fix this before running me again"
        break # jump out of a loop permanently
    end # end of if
end# end of do
