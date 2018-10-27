a = [1, 2, 3]
b = [1, 2, 3]

# should return different values
p a.object_id
p b.object_id

# even if you compare with boolean
p a.object_id == b.object_id # should be false

c = a
p c.object_id #get's the same object_id
p a.object_id == c.object_id # should be true

# if I make the changes c will also be updated
a.push(4)
# look even c reflects the same change
p c

# same if I change c
c.push(5)
p a

## too avoid this
# using the dup method (duplicate)
puts "..........using the duplicate method..........."
d = a.dup
p d
p a
#different object ID
puts "..........object ID are not the same..........."
p d.object_id
p a.object_id

puts "....mods to a doesn't affect d......."
a.push(6)
p a
p d # d retains the old code
