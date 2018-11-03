require 'time'
# Ruby doesn't load it by default to save memory

# Parse method
# Accepts a string format,
# and if conventional, it will change it to a time object

puts Time.parse("2018-10-01")
puts

# String Parse Time
# Complements the Strftime method. Works in the opposite (From String to Time object)
# Allows us to define how the method should interpret the the string
puts Time.parse("03-04-2018") # it assumed the middle one is a month
puts Time.strptime("03-04-2000", "%m-%d-%Y")
