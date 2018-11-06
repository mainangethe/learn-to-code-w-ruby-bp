# Getter methods
# To expose protected variables (from encapsulation) we need methods to allow us to get them.
# Those methods are called getter methods

class Gadget
    def initialize
        @username = "User #{ rand( 1..100 ) }"
        @password = "topsecret"
        @production_number= "#{ ("a".."z").to_a.sample }-#{ rand( 1..100 ) }"
    end # end of initialize method

    def to_s
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id }"
    end # end of info method

    # read only - production_number
    # write only - password
    # read / write - username

    # NB - Instance methods have access to all instance variables
    # and they can call other instance methods

    def username # best practice to reference the same name
        @username
    end # end of username method

    def production_number
        @production_number
    end # end of prod_number method

end # end of class

phone = Gadget.new
laptop = Gadget.new

p phone.username
p phone.production_number
