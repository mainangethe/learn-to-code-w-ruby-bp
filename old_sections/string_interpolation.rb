p 5
p 5.next

p 5.to_s

name = "Ng'ethe"

p name

p "Hello #{name}, how are you"

age = 25
counter = 5
p "I am #{age} years old"

p "I am " + age.to_s + " years old" #very ugly and without the .to_s method, you'd get an error

p "the result of adding 1 + 1 is #{1+1}"

p "In #{counter} years, #{name} will be #{age + counter}"
