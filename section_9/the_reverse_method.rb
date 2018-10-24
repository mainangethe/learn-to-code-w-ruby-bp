num = [1, 2, 3]
p num.reverse

letters = %w[A B C]
p letters.reverse

bool = [true, true, false, false, true]
p bool.reverse

arrays = [["Tom"], ["Mary"], ["Oguda"]]
p arrays.reverse


## there's a reverse BANG method
## reverse! - symbol

queue = [4, 8, 15, 16, 23, 42]

q1 = queue.reverse
p q1
p queue

q2 = queue.reverse!
p q2
p queue # now it is permanent 
