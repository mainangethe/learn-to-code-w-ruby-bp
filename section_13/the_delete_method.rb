# used to remove sth from a hash
# takes in 1 argument (the hash key)
# and removes the whole pair
# returns the value being deleted
# mutates the hash

superheroes = {
                spiderman: "Peter Parker",
                superman: "Clark Kent",
                batman: "Bruce Wayne"
}

p superheroes
p superheroes.delete(:spiderman) # returns the value it removes
# it only retains the value, the key is lost forever

p superheroes

# it can't take multiple keys
