# the length and empty? methods

shopping_list = {bananas: 5, oranges: 10, carrots: 3, crackers: 15}
vegan_shopping_list = {}

p shopping_list.length # total number of pairs
p vegan_shopping_list.length # zero no keyvalue pairs present

# empty is a predicate method
# checks if keyvalues are present and returns true if there are none

p vegan_shopping_list.empty? # true
