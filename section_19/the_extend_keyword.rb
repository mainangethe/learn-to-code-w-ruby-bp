# the extend keyword
# it takes the modules methds and adds them to the class them
# include & prepend on the other hand mix in the methods at an instance level.
# objects are no longer able to call the module methods

module Announcer
    def who_am_i
        "The name of this class is #{self}"
    end # end of method
end

class Dog
    extend Announcer
end
class Cat
    extend Announcer
end

# watson = Dog.new
# p watson.who_am_i

p Dog.who_am_i
p Cat.who_am_i
