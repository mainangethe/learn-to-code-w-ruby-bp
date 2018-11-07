# The Prepend Keyword
# It forces Ruby to consider the module first instead of the class in the method lookup path

module Purchaseable
    #professionally, most modules end with the suffix 'able'

    def purchase(item)
        "#{item} has been purchased!"
    end # end of module purchase method

end # end of module

class Bookstore
    # include Purchaseable
    prepend Purchaseable #it forces module to be first in line when reviewing methods

    def purchase(item)
        "You bought a copy of #{item} at the Bookstore!"
    end # end of class purchase method
end # end of class

bn = Bookstore.new
p bn.purchase("1984")
p Bookstore.ancestors
