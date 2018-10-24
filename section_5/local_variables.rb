#variables with the same name with one in a method is ok
expression = "I am Nguhi"

def introduce_myself
  expression = "I am Ng'ethe"
  puts expression
end

introduce_myself

puts expression # doesn't replace the inital definition
