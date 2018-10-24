numbers = [1, 3, 5, 7, 9, 15, 21]

p numbers[2, 4] # subset of the array

p numbers[1, 3]

p numbers[0, 1] # removes the same number but still in an arary
p numbers[0]


p numbers[0].class
p numbers[0, 1].class

p numbers[0, 100] # only loads until the boundary


##
## another way is to use the range method
num = [1, 3 ,9, 12, 18, 3]
p num

p num[3,4]

p num[3..4] # no longer the same, the last amount is where to conclude

p num[3...4] # means ignore the last one of the range

p num[4...8]

a = 1
b = 4

p num[a..b] #can use variables
