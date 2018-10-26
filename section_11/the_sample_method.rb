# the sample method
# extract 1 or more random element from an array

flavours = %w[Chocolate Vanilla Strawberry RumnRaisin]

puts flavours.sample

# you can ask it to take more elements when sampling
# When asking for multiple it will not repeat the elements
# also if you use the parenthesis it will always return an array


p flavours.sample(2)
p flavours.sample.class #when only retrieving 1 it returns a string
p flavours.sample(3).class # multiple becomes an array
p flavours.sample(1).class # even if it is just 1 item
p flavours.sample(3)

# if you ask it to give more than what the array has, it will only return
#the total values found but will still be at random
p flavours.sample(19)


# Let's create a sample order from our restaurant menu
# we will save the sample order in a new variables "unataka", "tunadai"

loft_kitchen_menu = %w[Chai Ndunya Chapo Pilau Nyoyo Madondo]
p unataka = loft_kitchen_menu.sample # will return 1 item at random

p tunadai = loft_kitchen_menu.sample(3) # will return 3 items at random
p mukona = loft_kitchen_menu.sample(25) # will only return what the menu has but at random
