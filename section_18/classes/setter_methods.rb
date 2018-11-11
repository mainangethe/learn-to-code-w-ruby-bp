# Setter methods
# Setter methods are used to update protected variables (from encapsulation)
# We use an "=" sign for best practice to identify a setter method

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
    end # end of username getter method

    def production_number
        @production_number
    end # end of prod_number getter method

    def password=(new_password)
        @password = new_password
    end # end of password setter method

    def username=(new_username)
        @username = new_username
    end # end of username setter method

end # end of class

phone = Gadget.new
laptop = Gadget.new

p phone.username
p phone.production_number

p phone.username=("User 007")
p phone.password=("t0pS3cr3t")
p phone

# Ruby still has a shortcut for the setter methods
phone.password = "M16 - JamesBond"
p phone # still updated
