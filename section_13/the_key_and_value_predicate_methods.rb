# The .Key? or .Value? Methods
# boolean / predicate methods
# used to check whether a key or a value exists in a hash

cars =  {
        toyota: "Prado",
        mercedes: "E-Class",
        bmw: "520i",
        subaru: "Forrester"
        }
puts "..... Checking for Keys ..........."
# if we want to check if a key exists
puts cars.key?(:mercedes) # true
puts cars.key?(:benz) # false
puts cars.key?("bmw") # string and symbols are not the same

puts "..... Checking for Values ..........."
# we can also check for values
puts cars.value?("Prado") # true
puts cars.value?("Forrester") # true
puts cars.value?("Rav-4") # false

# you can use without parenthesis
puts cars.value? "E-Class" # true


# some old methods exists (.has_key?) and (.has_value?) do the same thing
# though are being phased out
puts "....... OLD SCHOOL ..........."
puts cars.has_key?( :toyota )
puts cars.has_value?( "520i" )
