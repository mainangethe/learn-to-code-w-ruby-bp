# self keyword
# depends on the context it is being used
# in an instance method, it means the current object that is using the method

class Gadget
    def initialize
        @username = "User #{ rand( 1..100 ) }"
        @password = "topsecret"
        @production_number= "#{ ("a".."z").to_a.sample }-#{ rand( 1..100 ) }"
    end # end of initialize method

    def to_s
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id }"
    end # end of info method

end # end of class

phone = Gadget.new
laptop = Gadget.new

p phone.to_s
p laptop.to_s
