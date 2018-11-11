# Parameters to the initialize method
# you add the required params
# define what initialize deals with them
# then when creating an object then you can specify the params
# with params, you cannot create an object without the required params

class Gadget

    def initialize(username, password)
        @username = username
        @password = password
        @production_number= "#{ ("a".."z").to_a.sample }-#{ rand( 1..100 ) }"
    end # end of initialize method

    def to_s
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id }"
    end # end of info method

    attr_accessor :username
    attr_reader :production_number
    attr_writer :password


end # end of class

g1 = Gadget.new("User 007", "Bond,James Bond")
g2 = Gadget.new("User 122", "Pang'ang'a")
g3 = Gadget.new("User 345", "T0p$3cr3t")

p g1
p g2
p g3
