# Protected methods
# Are in between of public and private methods
    # Public methods allow interaction with an object
    # Public methods can be called by any other object
    # Private can only be called within the object
    # Private methods cannot be invoked by another object
    # For private methods, the current object is the only receiver
# A Protected methods can be invoked by objects of the same class
# Protected methods can be called within the same family of objects
# Protected methods are used to compare objects of the same class
# We use the protected keyword above the protected methods



class Car
    def initialize(age, miles)
        base_value = 200000
        age_deducation = age * 1000
        miles_deduction = (miles / 10.to_f)
        @value = base_value - age_deducation - miles_deduction
    end # end of initialize

    def compare_car_with(car)
        self.value > car.value ? "Your car is better!" : "Your car is worse"
    end # end of method

    protected
    def value
        @value
    end
end # end of class

civic = Car.new(3,300000)

fiat = Car.new(1,200000)

p civic.compare_car_with(fiat)
puts

p fiat.compare_car_with(civic)

class Bike
    def initialize(age, miles)
        base_value = 200000
        age_deducation = age * 1000
        miles_deduction = (miles / 10.to_f)
        @value = base_value - age_deducation - miles_deduction
    end
end

kawasaki = Bike.new(3, 30000)
# p kawasaki.compare_car_with(fiat) # throws an error
