class Employee
    def initialize(name, age)
        @name = name
        @age = age
    end

    attr_accessor :age
    attr_reader :name

    def introduce
        "Hi!, my name is #{name} and I am #{age} years old."
    end
end

#sample employee oboject
ngethe = Employee.new("Ng'ethe Maina", 28)
puts ngethe.introduce
puts


class Manager < Employee

    def yell
        "Who's the boss? I AM THE BOSS!!"
    end

    def introduce
        "My name is #{name}, and I will be your new #{self.class}"
    end

end

class Worker < Employee
    def clock_in(time)
        "Starting shift at #{time.strftime("%H:%M %d %B, %y")}"
    end
end

edwin = Manager.new("Edwin Ogola", 45)
puts edwin.introduce
puts

faith = Worker.new("Faith Mukami", 22)
puts faith.introduce
puts

p edwin.class
p faith.class
puts

puts Manager.superclass
puts Worker.superclass
puts Employee.superclass
puts

# You can also evaluate as a condition
p Manager < Employee
p Worker < Employee
p Employee < Object
p Worker < Object
p Manager < BasicObject
p Object > Manager
puts

# Predicate methods that evaluate inheritance
p edwin.is_a?(Employee)
p faith.is_a?(Worker)
p edwin.is_a?(Manager) #false
puts

# Instance of? more restricted
# will only return true if it directly instance of the object being evaluated

p ngethe.instance_of?(Employee)
p ngethe.instance_of?(Object) # false
puts

p edwin.yell
puts
p faith.clock_in(Time.now)
puts

p edwin.introduce
