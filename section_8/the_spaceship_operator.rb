# spaceship operator
# <=>
# does an evaluation
# returns 1 out of 4 values (-1, 0, nil,  1)

# p 5 <=> 5 #0
#
# p 5 <=> 7 #-1 (if the left side is smaller)
#
# p 7 <=> 5 #+1 (if the right side is smaller)
#
# p "john" <=> 3 # nil (can't compare)

#this operator is great in custom sort algorithms

arr = [3, 4, 25 ]
arr2 = [3, 4, 15 ]

p arr <=> arr2
