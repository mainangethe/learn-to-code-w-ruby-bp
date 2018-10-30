# A block predicate method that evaluates to run
# if a block is entered
# block_given? to evaluate the method

def pass_control_on_condition
    puts "Inside the method"
    yield if block_given?
    puts "Back inside the method"
end #end of method

pass_control_on_condition { puts "Hi Ng'ethe" }

pass_control_on_condition

def menu_item_creation_reworked
    puts "We are in the method"
    puts " Leaving now to go execute in a block"
    if block_given?
        yield
    else
        puts "I didn't leave since there is no block"
    end # end of if

end # end of Method

menu_item_creation_reworked
