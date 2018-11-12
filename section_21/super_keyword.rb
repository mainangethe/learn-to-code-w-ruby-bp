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

class Manager < Employee

    def initialize(name, age, rank)
        super(name, age)
        @rank = rank
    end
    attr_reader :rank
    def yell
        "Who's the boss? I AM THE BOSS!!"
    end

    def introduce
        result = super
        result += " I am also a manager!"
    end

end

#sample employee oboject
ngethe = Employee.new("Ng'ethe Maina", 28)
puts ngethe.introduce
puts
edwin = Manager.new("Edwin Ogola", 45, "Country Manager - KE")
puts
p edwin.rank
puts edwin.introduce
puts
