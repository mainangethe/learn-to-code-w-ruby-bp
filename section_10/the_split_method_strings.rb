sentence = "Hi, my name is Ng'ethe. There are spaces here!"

p sentence.split #space delimiter by default

p sentence.split(" ") # direct duplicate as above

p sentence.split(",") # , delimiter

p sentence.split("m")# it also removes the delimiter

p sentence.split(".") # . delimiter

p sentence.split(" # i") # multiple char delimiter

words = sentence.split

words.each { |word| puts word.length }
