# The .sort & .sort_by Methods
# Because a hash is best used for relationships and arrays for lists
# when using the .sort / .sort_by methods, it will always return an array

pokemon =   {
            squirtle: "Water",
            burlbasaur: "Grass",
            charizard: "Fire"
            }

# Sort method uses the keys to sort the pokemon
p pokemon.sort
p pokemon.sort.class #Array


# to sort based on values
# we need to make use of the .sort_by method
# utilizes a block

p pokemon.sort_by { |pokemon, type| type }

p pokemon.sort_by { |pokemon, type| pokemon } # you can still sort based on keys
