# Shortcut Accessor Methods
# Accessor methods - are shortcut syntax to rewrite getter and setter methods


class Gadget

    def initialize
        @username = "User #{ rand( 1..100 ) }"
        @password = "topsecret"
        @production_number= "#{ ("a".."z").to_a.sample }-#{ rand( 1..100 ) }"
    end # end of initialize method

    def to_s
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id }"
    end # end of info method

    # Accessor Attribute will generate both a setter and getter method (multiple methods use comma)
    attr_accessor :username

    # Reader Attribute will generate a getter method only (multiple methods use comma)
    attr_reader :production_number #, :username

    # Writer Attribute will generate a setter method only (multiple methods use comma)
    attr_writer :password #, :username


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
