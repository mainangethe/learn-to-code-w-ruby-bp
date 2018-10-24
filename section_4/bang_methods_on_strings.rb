#bang methods always have an '!' symbol

word = "hello"
p word.capitalize
p word

#bang methods actually mutate (permanent). it overwrites

p word.upcase!

p word.downcase
p word

p word.reverse!
p word
