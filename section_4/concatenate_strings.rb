first_name = "Ng'ethe"
last_name = "Maina"

## first method using the '+' symbol
puts first_name + last_name

#p first_name += last_name #shorthand

## 2nd mehod (concat method) - overrides the existing variable
puts first_name.concat(last_name)


## (shovel concatenator) multiline symbol

p first_name << last_name << "Wizard"

## prepend method also overrides the existing variable
puts first_name.prepend(last_name)
puts
