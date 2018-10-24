name = "Snow White"

p name.include?("S")
#it is case sensitive
p name.include?("s")

# you can check for spaces
p name.include?(" ")

# double spaces are valid chars
p name.include?("  ")

p name.downcase.include?("white")
p name.downcase.include?("rain")
p name.downcase.include?("it")
