# splat arguments
# are used when the no of expected arguments are unknown

def sum(a,b)
    # old way only used 2 arguments
end # end of method

## what if we want any number of arguments (1,5, 10.. any they want)
# use the * symbol then the parameter
# *param

def sum(*numbers)
    numbers #array of all the numbers added
    sum = 0
    numbers.each{ |num| sum += num }
    sum
end

p sum(1,2)

p sum(1,3,4,6,8,9, -1, -5, -8)

p sum()# can even use no arguments

p sum(1)

#research combining splat and regular arguments
