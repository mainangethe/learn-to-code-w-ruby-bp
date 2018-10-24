stock_prices = [723.99, 434.12, 84.7, 649.92]
#
# p stock_prices.max
# p stock_prices.min
#
#
fruits = %w[apple kiwi banana watermelon]
#
# p fruits.max
# p fruits.min


def custom_max(array)
    # return the maximum value in the array
    array.sort.last

end # end of method


def custom_min(array)
    # returns the minimum value in the array
    array.sort.first

end #end of method
p ".......... Max Outputs ............"
p custom_max(stock_prices)
puts custom_max(fruits)
p ".......... Min Outputs ............"
p custom_min(stock_prices)

p custom_min(fruits)


## Lecturer option 2

def custom_min_2(array)
    # return nil if this is not an array
    return nil if array.empty?

    #let's give a new assumed min
    min = array[0]

    # let's review all values and confirm if they are larger than min
    # else overwrite it with the new found minimum no.
    array.each { |num| min = num if num < min }

    # return min
    min

end # end of method

p custom_min_2(stock_prices)
