foods = %w[Steak Vegetables BurgerSteak Kale Tofu TunaSteak]

good = foods.select { |food| food.include?("Steak") }
bad = foods.reject { |food| food.include?"Steak"}

p good
p bad

# using the partition method to do all of the above
# must also have a logical condition inside it's block

p foods.partition { |food| food.include?("Steak")}

goods, bads = foods.partition { |food| food.include?("Steak")}

p goods
p bads
