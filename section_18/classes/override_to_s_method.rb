# Overriding the .to_s method
# to_s is already defined in Gadget's super class "Object"
# by default, it just returns the class and it's memory address

# if we define our own to_s method in our class, it will override it and show
# our current definition

class Gadget
    def initialize
        @username = "User #{ rand( 1..100 ) }"
        @password = "topsecret"
        @production_number= "#{ ("a".."z").to_a.sample }-#{ rand( 1..100 ) }"
    end # end of initialize method

    def to_s
        "Gadget #{@production_number} has the username #{@username}"
    end # end of info method

end # end of class

phone = Gadget.new
laptop = Gadget.new

p phone.to_s
