# we will load multiple modules
# we use the require / require_relative keywords

require "./modules/circle_mod.rb"
require_relative "modules/square_mod"
require "./modules/rectangle_mod"

puts Circle.area(10)
puts Rectangle.area(13,9)
puts Square.area(7)
