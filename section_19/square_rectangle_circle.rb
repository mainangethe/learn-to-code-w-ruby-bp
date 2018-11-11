# 3 modules in 1
# best practice is 1 module per file in professional code

module Square

    def self.area(side)
        side * side
    end # end of area method

end # end of Square module

module Rectangle

    def self.area(length, width)
        length * width
    end # end of area method

end # end of Rectangle module

module Circle
    PI = 3.14159

    def self.area(radius)
        PI * radius * radius
    end# end of area method
end # end of Circle module

puts Square.area(10)
puts Square.area(5)
puts Square.area(4)
puts

puts Rectangle.area(10,5)
puts Rectangle.area(14,7)
puts

puts Circle.area(7)
puts Circle.area(3)
