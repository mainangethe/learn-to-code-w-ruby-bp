a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == d # true
p a == c # false
p a == b
p b == c
p b == d
p c == d

# has to be in the same order and in the same size for it to be true

p a != d
p a != b
p c != d

a2 = %w[Skittles Haribo Eclairs]
b2 = %w[Skittles Haribo eclairs]

p a2 == b2 # it is case sensitive
p a2 != b2 # true
