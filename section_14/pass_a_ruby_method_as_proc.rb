p ["1", "2", "3"].map {|number| number.to_i}

# common detonimator is converting it to an interger
# to pass it as a proc we need to give it a name (same name of the method)
# and then add the & symbol to notify the method, that it is a proc
p [ "1", "2", "3"].map(&:to_i)

# example 2
p [10, 14, 25].map(&:to_s)

# example 3
p [1, 2, 3, 4, 5].select { |number| number.even? }

# proc alternative
p [1, 2, 3, 4, 5].select(&:even?)

# example 4
p [1, 2, 3, 4, 5].reject { |number| number.odd? }

# proc alternative
p [1, 2, 3, 4, 5].reject(&:odd?)

# Let's create an array and iterate over it and show whether they are odd
menu_prices = [10, 20, 25, 35, 70, 80, 120]
p menu_prices.select { |number| number.odd? } # [25,35]

# We can do the same by simply calling the odd method as a proc
p menu_prices.select(&:odd?) # same result
