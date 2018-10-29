# fetch method
# works the same way as how it is used in an array

menu = {chai: 20.00, mandazi: 10.00, chai_kubwa: 25.00, pilau: 80.00, githeri: 70.00 }

p menu[:chai]
p menu[:pilau]
p menu[:mandazi]

# using the fetch method
puts ".........using the fetch method......"
p menu.fetch(:chai_kubwa)
p menu.fetch(:githeri)
# p menu.fetch(:chapati) # calls an error by default
p menu.fetch(:chapati, "Key Not found")

# when placing return if not found never runs if a value is found
p menu.fetch(:chai, "Please order sth else")
