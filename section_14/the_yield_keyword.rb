# the yield keyword
# transfers control to a block

# example
def pass_control
    puts "This is inside the method!"
    yield # pass control from method to the block
    puts "Now I'm back inside the method"
end # end of method

pass_control { puts "Now I'm inside the block!" }

# still valid
pass_control do
    puts "This is my time"
    puts "Let's now exit and go back to the method"
end

# blocks always returns the last command back to the method (implicit return)
# we don't need to use return in the block
# if you enter return it will use a bug

def who_am_i
    adjective = yield
    puts "I am #{adjective}"
end # end of method

who_am_i { "The Don" }
who_am_i { "Ng'ethe" }

# multiple yields
def multiple_pass
    puts "inside the method"
    yield
    puts "Back inside the pethod"
    yield
end # end of method

multiple_pass { puts "Now I'm inside the block" }

result = multiple_pass { puts "Now I'm inside the block"}
# p result  # nil because of the puts



# you can also use the yield multiple times

def menu_creation
    puts "Inside the method"
    puts "We will be creating a menu"
    yield
    puts "We are now back in the method"
    puts "Leaving now"
    yield

end # end of method

lk_menu = menu_creation do
    puts "We are now in the block"
    menu = { pilau:80, chai: 20, mandazi: 10 }
end # end of block
p lk_menu
