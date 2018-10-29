# literal syntax to creating a hash
fruit_prices =  {
                banana: 1.05
                }



p fruit_prices[:oranges]
p fruit_prices[:melon]
# default value nil when there is no key found

# let's recreate a hash using the Hash class
fruit_prices_2 = Hash.new("We don't have that fruit")
fruit_prices_2[:banana] = 1.05
fruit_prices_2[:orange]= 0.69
fruit_prices_2[:kiwi] = 10.99

p fruit_prices_2[:kiwi]
p fruit_prices_2[:celery]
p fruit_prices_2[:mushrooms]

# we can also use another method (default)
# doesn't use parenthesis, uses the assignment method to update

fruit_prices_2.default = "Whoops! That doesn't exist here"
p fruit_prices_2[:kiwi]
p fruit_prices_2[:celery]
p fruit_prices_2[:mushrooms]
