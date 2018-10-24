#.length & .size method
a = "Hello world"
b = "Hi, my name is Ng'ethe"
c = " "
d = ""

p a.length
p b.length
p c.length
p d.length
puts
p a.size
p b.size
p c.size
p d.size

#everything is an object
#multiple method calls - methodchaining
p a.length.class
p d.length.class

p a.length.odd?
p b.length.even?

p a.length.next

p a.length.to_s

p b.size.to_f

p a.length.between?(1,15)
