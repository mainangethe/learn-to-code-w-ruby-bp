# Instance Variables
# Define the objects properties/ attributes.
# it makes objects be unique from one another
# The instance variables make up the object's state
# Each object can have a custom state.
# Defining instance variables begin with the "@" sigil symbol i.e. @name
# Without the @ sigil, the variable would be interpreted as a local variable to the
# method it is used in

# We need the initialize method
# it is called immediately when an object is instantiated from a class with the new method
# The initialize method offers an opportunity to assign values to instance variables in order
# to define the objects state

# if the initialize method is not defined in the class, each object is initialized with NO state.

# The assignment of values to instance variables does not mean the values have to stay constant.
# The object's state CAN be altered later
# Initialize is NEVER supposed to be called

class Gadget
    def initialize
        @username = "User #{ rand(1..100) }"
        @password = "topsecret"
        @production_number= "#{ ("a".."z").to_a.sample }-#{ rand( 1..100 ) }"
    end # end of method
end # end of class

phone = Gadget.new
p phone
p phone.instance_variables # method returns instance variables for the Phone gadget.
puts

laptop = Gadget.new
p laptop
puts
