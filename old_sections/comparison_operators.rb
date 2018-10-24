#Equality Operator
# ==
# p 10 == 10
#
# p 10 == 12
#
# a, b, c = 10, 5, 10
#
# p a == c
# p c == a
#
# p a == b
# p b == a
#
# p b == c
# p c == b
#
#
# p 5 == 5
# p "5" == '5'
#
# p "5".to_i == 5 #two different objects
# p 5 == 5.0 #numbers (float / ints) can be used  though
#
##
##
## #In Equality Operator
##
## # !=
#
# p 10 != 5
# p 10 != 10
# p "Hi" != "Hello"
# p "hello" != "Hello" # case sensitivity is important
# p "hello" != "hello"
#
# p "1234" != 123 #different data types

##
##
## Less than or Greater than Operators
##
##
# < (less than symbol)

p 1 < 8
p 10 < 15

# <= (Less than or equal to)
p 1 <= 5
p 15 <= 14
p 5 <= 5

# > (greater than)
p 10 >5
p -1 > -5
p 12 > 20
p 12.38 > 21.14

# >= (greater than or equal to)
p 8 >= 5
p 9 >= 10
p 38 >= 38
