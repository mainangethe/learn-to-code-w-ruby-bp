# Instance Methods
# available for all object instances
# unique to that particular class
# instance methods need a receiver for it to run. Meaning it needs an object instance.




class Gadget
    def initialize
        @username = "User #{ rand(1..100) }"
        @password = "topsecret"
        @production_number= "#{ ("a".."z").to_a.sample }-#{ rand( 1..100 ) }"
    end # end of initialize method

    def info
        "Gadget #{@production_number} has the username #{@username}"
    end # end of info method
end # end of class

phone = Gadget.new
laptop = Gadget.new

# it is a public info
puts phone.info
puts laptop.info

# instance variables are not accesible to the outside world
# puts phone.@username # will throw an error
# Class Gadget cannot use the .info method

p phone.methods.sort #info should be present (list of "i" methods)
p Object.methods.sort
exclusive_methods = phone.methods - Object.methods
p exclusive_methods #the only unique method phone has
