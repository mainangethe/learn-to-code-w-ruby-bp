# array is mutable (can be removed, swapped etc.)

 p fruits = %w[apple grape banana orange]

p fruits[1]

fruits[1] = "strawberry"

p fruits # replaced the strawberry

p fruits[-1] = "tangerines"
p fruits

p fruits[fruits.length] = "Kiwi"
p fruits[4]

p fruits[8] = "pineapple"
p fruits

fruits[5,2] = ["mango", "passion", "guava"]

p fruits[0..3] = ["Tomato"] #replaces the other 3 elements

p fruits
