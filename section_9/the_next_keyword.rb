# difference is this skips the current iteration
# keyword - next

numbers = [1, 2, 3, "Hello", 5, 6, nil, 7, 8, []]

numbers.each do |num|
    unless num.is_a?(Fixnum)
        next # skip this num
    else
        puts "The squaer of #{num} is #{num ** 2}"
    end # end of unless
end#end of do
