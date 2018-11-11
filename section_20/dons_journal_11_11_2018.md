# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 11/11/2018

**Entry No.** 28

I learnt about how to create class variables & class methods, and that in Ruby you can customize existing classes (Monkey Patching)

- [MonkeyPatching](#Heading-1)
- [Creating Class Variables & Class Methods](#Heading-2)


## Monkey Patching
This is the practice of modifying an existing class.
You can do it to user created classes or even Ruby's.
To monkey patch a class, all you need is to duplicate it's existing name in your class name.
When you monkey patch, all previous and future objects get access to the modification/addition i.e. any method you can will automatically be available for even objects that existed before the patch.
Ruby normally groups all the class definition to one before running it's operations.

*Example*
```ruby
    # Let's monkey patch an existing Ruby class
    # The Fixnum class to be able to manipulate time

    class Fixnum
        BASE = 60
        def seconds
            self
        end

        def minutes
            self * BASE
        end

        def hours
            self.minutes * BASE
        end

        def days
            self.hours * 24
        end
    end

    # we can now test them

    time_tomorrow = Time.now + 1.days
    p time_tomorrow # Current time + 1 day

    time_in_4_hours = Time.now + 4.hours
    p time_in_4_hours # Current time + 4 Hours

```


## Using Class Variables & Class Variables
Sometimes there is a common property within objects that can lead to duplicates in information. In such cases we can make use of class variables to store that information so that there is no need to duplicate.
To create a class variable, we use two(2) "@" sigil symbols

A class method works for the class only. A good example is the .new method.
It can be called with or without an object existing.
To create a class method we use the "self" keyword.

*Example*
```ruby
    # Let's create an Employee class that has several methods

    class Employee

        @@organization = "Mradi Kenya Limited"
        @@count = 0

        def initialize(name, age, experience_years)
            @name = name
            @age =  age
            @experience = experience_years
            @joined_date = Time.now
            @salary = salary_calculator(age, experience_years)
            @@count += 1
        end

        def self.count
            @@count
        end


        def self.description
            "This class is the blueprint for creating an Employee for #{@@organization}."
        end

        BASE_SALARY = 40000
        attr_accessor :name, :age, :experience
        attr_reader :joined_date

        def organization
            @@organization
        end

        def employee_ranking(employee)
            self.salary > employee.salary ? "You rank higher than #{employee.name}" : "#{employee.name} rank is higher than yours"
        end

        private

        def salary_calculator(age, experience_years)

            age_factor = (age * 1000)
            experience_factor = (experience_years * 15000)

            salary = BASE_SALARY + age_factor + experience_factor
        end

        protected

        attr_reader :salary

    end

    # we can now test them

    p Employee.description
    p Employee.count

    nmaina = Employee.new("Ng'ethe Maina", 30, 10)
    p Employee.count

```
