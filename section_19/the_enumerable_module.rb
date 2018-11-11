# The enumerable module
# it is a default Ruby mixin
# it is used to iterate over an object (similar to hashes / arrays)
# when using enumerable, we need to help it by defining the each method

class ConvenienceStore
    include Enumerable

    attr_reader :snacks

    def initialize
        @snacks = []
    end

    def add_snack(snack)
        snacks << snack
    end

    def each
        snacks.each { |snack| yield snack}
    end
end # end of class

loft_kitchen = ConvenienceStore.new

loft_kitchen.add_snack("Pilau")
loft_kitchen.add_snack("Githeri")
loft_kitchen.add_snack("Mandazi")
loft_kitchen.add_snack("Chai")
puts

p loft_kitchen.snacks
puts

loft_kitchen.each { |snack| puts "Loft Kitchen serves #{snack}" }
puts

p loft_kitchen.any? {|snack| snack.length > 5 }
puts

p loft_kitchen.map {|snack| snack.upcase }
puts

p loft_kitchen.select { |snack| snack.downcase.include?("a") }
puts

p loft_kitchen.reject { |snack| snack.downcase.include?("a") }
puts

p loft_kitchen.sort
puts

p loft_kitchen.first
