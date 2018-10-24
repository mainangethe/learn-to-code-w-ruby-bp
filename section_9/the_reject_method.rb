# the reject method
# opp. of the select method

animals = %w[cheetah cat lion elephant dog cow]

non_c_animals = animals.reject { |animal| animal.include?("c") }

# to make it work like select method, just negate it
c_animals = animals.reject { |animal| !animal.include?("c") }
c_animals2 = animals.select {|animal| animal.include?("c")}

p non_c_animals

p c_animals

p c_animals2
