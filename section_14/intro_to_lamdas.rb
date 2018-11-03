# Lamdas in Ruby
# works like a nameless / anonymous method
# very similar to procs
# they are also objects
# created using the proc class
# still uses the "&" ampersand symbol

squares_proc = Proc.new { |number| number ** 2 }

p [1, 2, 3].map(&squares_proc)

p squares_proc.call(4)

squares_lambda = lambda { |number| number ** 2 }
p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)

## Difference 1
# Lambdas care about the number of arguments, throws an error
# while procs ignore the othres and assigns nil to them

some_proc = Proc.new { |name, age| "Your name is #{name} and you are #{age} years old."}

p some_proc.call("Ng'ethe", 27)
p some_proc.call() #still runs

some_lambda = lambda { |name, age| "Your name is #{name} and you are #{age} years old."}

# p some_lambda.call() # will throw an error
# p some_lambda.call("Ng'ethe") # will throw an error
p some_lambda.call("Ng'ethe", 27) #runs

# programmers favour lambdas to make sure you get the errors

## Difference 2
# how they deal with "return" values, lambdas return control back to the method and it
# continues. For proc , return doesn't allow the proc to continue, it completes

def diet
    status = lambda { return "You gave in!" }
    status.call
    "You completed the diet"
end # end of method
p diet

def diet_proc
    status = Proc.new { return "You gave in!"}
    status.call
    "You completed the diet!"
end # end of method

p diet_proc
