## even_and_odds challenge
# first array should contain only the odd numbers
# second array should contain only the even numbers
# if there are no even or odd numbers, the respective array should be empty

tc1 = [4, 8, 15, 16, 23, 42]
tc2 = [2, 4, 6]
tc3 = [1, 3, 5]


def even_and_odds(array)
    return nil if array.empty?
    array.partition { |number| number.odd? }

end

p even_and_odds(tc3)
