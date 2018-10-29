# the select and reject method
# must put a condition inside the block
# don't mutate the hash
# returns a new hash

recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}


puts "........ Using the Select Method ..........."
high = recipe.select { |ingredient, teaspoons | teaspoons >=5 }
p high # new hash
p recipe # remains as it was

# reject works the opposite
puts "........ Using the Reject Method ..........."
low = recipe.reject { |ingredient, teaspoons | teaspoons >=5 }
p low

# can evaluate keys as well
includes_s = recipe.select { |ingredient, teaspoons| ingredient.to_s.include?("s")}
p includes_s
