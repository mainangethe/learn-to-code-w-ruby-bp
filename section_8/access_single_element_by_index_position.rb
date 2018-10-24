fruits = %w[Apple Orange Grape Banana Lemon Watermelon]

#how length works in an array

p fruits.length # returns number of values in an aray
p fruits[0]
p fruits[3]
p fruits[fruits.length - 1]
p fruits[-1] # same as how to retrieve from a list

p fruits[-fruits.length]

p fruits.[](-4) # how ruby is processing it
