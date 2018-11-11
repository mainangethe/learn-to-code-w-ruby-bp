module Purchaseable
    #professionally, most modules end with the suffix 'able'

    def purchase(item)
        "#{item} has been purchased!"
    end # end of purchase method

end # end of module

class Bookstore
    include Purchaseable
end # end of class

barnes_and_noble = Bookstore.new

p barnes_and_noble.purchase("Atlas Shrugged")

class Supermarket
    include Purchaseable
end # end of class

quickmart = Supermarket.new
p quickmart.purchase("Dairyland Ice Cream")

class Megamart < Supermarket #Inherited class
end

joyland = Megamart.new
p joyland.purchase("Exe Chapati Flour")
