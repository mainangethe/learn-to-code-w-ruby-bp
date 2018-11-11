# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 08/11/2018

**Entry No.** 27

I learnt about how to protect accessibility of your methods (private & protect) adding validation to methods and many more.

> Creating Private Methods

> Creating Protected Methods

> Validating setter methods

> Preference of Instance methods over calling instance variables directly

> Calling multiple setters in one method

> All about Structs



## 1. Creating Private Methods
By default, when Ruby is defining an instance method, they are made public. A public method is accessible to all objects. Sometimes this should not be the case, thus we can make some methods private.
A private method is only accessible to the object that creates it.
To create a private method, we only add the keyword "private" before defining the method, all methods below the keyword will be made private.

*Example*
```
    # Let's create an Employee class that has several methods

    class Employee

        def initialize(name, age, experience_years)
            @name = name
            @age =  age
            @experience = experience_years
            @joined_date = Time.now
            @salary = salary_calculator(age, experience_years)
        end

        attr_accessor :name, :age, :experience
        attr_reader :joined_date, :salary

        private
        def salary_calculator(age, experience_years)
            base_salary = 40000
            age_factor = (age * 1000)
            experience_factor = (experience_years * 15000)
            salary = base_salary + age_factor + experience_factor
        end

    end

    # we can now test them

    tom = Employee.new("Tom Wekesa", 27, 6)
    p tom.salary # 157,000
    p tom.name # "Tom Wekesa"
    p tom.age # 27
    p tom.joined_date # Current Date & Time
    p tom.salary_calculator(27,6) # Will not work as it is a private method

```


## 2. The Protected Methods
A protected method is a hybrid of a public and private method. A protected method can be accessed by any object that belongs to the same class/family.
*Example*
```
    # Let's create an Employee class that has several methods

    class Employee

        def initialize(name, age, experience_years)
            @name = name
            @age =  age
            @experience = experience_years
            @joined_date = Time.now
            @salary = salary_calculator(age, experience_years)
        end
        BASE_SALARY = 40000
        attr_accessor :name, :age, :experience
        attr_reader :joined_date

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

    wekesa = Employee.new("Tom Wekesa", 27, 6) # Salary is KES 157,000
    ngunjiri = Employee.new("Arnold Ngunjiri", 23, 9) # Salary is KES 198,000
    p wekesa.employee_ranking(ngunjiri) # Ngunjiri should be higher

```


## 3. Validating Setter Methods
Because setter methods are used to update/modify values in our code, and computers work in a "Garbage In, Garbage Out" fashion, it means we need to make sure that it only updates if it get's the right input.

*Example*
```
    # In our class Employee, the salary calculator is a very crucial private method
    # We don't want getting nil salaries. Thus we need to always validate our inputs
    # before we run it

    class Employee

        def initialize(name, age, experience_years)
            @name = name
            @age =  age
            @experience = experience_years
            @joined_date = Time.now
            @salary = salary_calculator(age, experience_years) if valid_salary_inputs(age, experience)
        end
        BASE_SALARY = 40000
        attr_accessor :name, :age, :experience
        attr_reader :joined_date

        def employee_ranking(employee)
            self.salary > employee.salary ? "You rank higher than #{employee.name}" : "#{employee.name} rank is higher than yours"
        end

        private

        def valid_salary_inputs(age, experience_years)
            age.is_a?(Integer) && experience_years.is_a?(Numeric) && age > 0
        end

        def salary_calculator(age, experience_years)

            age_factor = (age * 1000)
            experience_factor = (experience_years * 15000)

            salary = BASE_SALARY + age_factor + experience_factor
        end

        protected

        attr_reader :salary

    end

    # we can now test them

    wekesa = Employee.new("Tom Wekesa", 27, 6) # Salary is KES 157,000
    ngunjiri = Employee.new("Arnold Ngunjiri", "23", 9) # Salary will not be calculated with a string
    p wekesa
    p ngunjiri

```

## 4. Using Instance Methods instead of Instance Variables
The reason why professional code prefers using instance methods over instance variables is that it allows flexibility to save the variables in the best format we would want irrespective of how it needs to appear when called

*Example*
```
    # In our class Employee, the joined_date is a time object which is how we want to save it in, but if we want to load the joined date in a different way when called, we can use our instance method to customize it how we want

    class Employee

        def initialize(name, age, experience_years)
            @name = name
            @age =  age
            @experience = experience_years
            @joined_date = Time.now
            @salary = salary_calculator(age, experience_years) if valid_salary_inputs(age, experience)
        end
        BASE_SALARY = 40000
        attr_accessor :name, :age, :experience


        def employee_ranking(employee)
            self.salary > employee.salary ? "You rank higher than #{employee.name}" : "#{employee.name} rank is higher than yours"
        end

        def joined_date
            p @joined_date.strftime("%d %B, %Y")
        end

        private

        def valid_salary_inputs(age, experience_years)
            age.is_a?(Integer) && experience_years.is_a?(Numeric) && age > 0
        end

        def salary_calculator(age, experience_years)

            age_factor = (age * 1000)
            experience_factor = (experience_years * 15000)

            salary = BASE_SALARY + age_factor + experience_factor
        end

        protected

        attr_reader :salary

    end

    # we can now test how it works

    wekesa = Employee.new("Tom Wekesa", 27, 6)
    p wekesa.joined_date # DD Full Month, Full Year
    p wekesa


```

## 5. Using Multiple Setters in a method
When calling multiple setters to perform a specific function, it is best to use the "self" keyword to ensure that the class is aware that it is the instance method and not the variable that is being referenced.

*Example*
```
    # In our class Employee, we will add a reset employee method that calls
    # various instance methods to show the best format on how to call them.


    class Employee

        def initialize(name, age, experience_years)
            @name = name
            @age =  age
            @experience = experience_years
            @joined_date = Time.now
            @salary = salary_calculator(age, experience_years) if valid_salary_inputs(age, experience)
        end
        BASE_SALARY = 40000
        attr_accessor :name, :age, :experience

        def reset_employee(name, age, experience_years)
            self.name = name
            self.age = age
            self.experience = experience_years
        end

        def employee_ranking(employee)
            self.salary > employee.salary ? "You rank higher than #{employee.name}" : "#{employee.name} rank is higher than yours"
        end

        def joined_date
            p @joined_date.strftime("%d %B, %Y")
        end

        private

        def valid_salary_inputs(age, experience_years)
            age.is_a?(Integer) && experience_years.is_a?(Numeric) && age > 0
        end

        def salary_calculator(age, experience_years)

            age_factor = (age * 1000)
            experience_factor = (experience_years * 15000)

            salary = BASE_SALARY + age_factor + experience_factor
        end

        protected

        attr_reader :salary

    end

    # we can now test how it works

    wekesa = Employee.new("Tom Wekesa", 27, 6)
    p wekesa
    puts
    wekesa.reset_employee("Tom Wekesa", 27, 6)
    p wekesa

```

## 6. All About Structs
Structs are considered mini classes.
Mostly only contain simple in it's composition (instance variables only).
Are valid Ruby objects.
Are constructed using the class Struct and the new method.
Have the same naming convention as a class - UpperCaseCamel

*Example*
```
    # In our class Employee, let's create a module that will have a struct
    # to hold academic qualifications
    # We will then have functions to add to an employee


    module ShuleManenos

        AcademicQualifications = Struct.new( :qualification, :system, :years)

        QUALIFICATIONS =
        [
            AcademicQualifications.new( :KCPE, :Kenyan_844, 8 ),
            AcademicQualifications.new( :KCSE, :Kenyan_844, 4 ),
            AcademicQualifications.new( :DIPLOMA, :Kenyan_844, 2 ),
            AcademicQualifications.new( :Bachelors, :Kenyan_844, 4 ),
            AcademicQualifications.new( :Masters, :Kenyan_844, 2 ),
            AcademicQualifications.new( :PHD, :Kenyan_844, 2 ),
        ]


        def self.find_qualification(name)
            QUALIFICATIONS.find { |academic_qualification| academic_qualification.qualification == name }
        end


    end

    class Employee

        def initialize(name, age, experience_years)
            @name = name
            @age =  age
            @experience = experience_years
            @joined_date = Time.now
            @salary = salary_calculator(age, experience_years) if valid_salary_inputs(age, experience)
            @academic_qualification = []
        end
        include ShuleManenos

        BASE_SALARY = 40000

        attr_accessor :name, :age, :experience
        attr_reader :academic_qualification

        def add_academic_qualification(qualification_name)
            qualification = ShuleManenos.find_qualification(qualification_name)
            @academic_qualification << qualification unless academic_qualification.include?(qualification)

        end

        def reset_employee(name, age, experience_years)
            self.name = name
            self.age = age
            self.experience = experience_years
        end

        def employee_ranking(employee)
            self.salary > employee.salary ? "You rank higher than #{employee.name}" : "#{employee.name} rank is higher than yours"
        end

        def joined_date
            p @joined_date.strftime("%d %B, %Y")
        end

        private

        def valid_salary_inputs(age, experience_years)
            age.is_a?(Integer) && experience_years.is_a?(Numeric) && age > 0
        end

        def salary_calculator(age, experience_years)

            age_factor = (age * 1000)
            experience_factor = (experience_years * 15000)

            salary = BASE_SALARY + age_factor + experience_factor
        end

        protected

        attr_reader :salary

    end

    # we can now test how it works

    wekesa = Employee.new("Tom Wekesa", 27, 6)
    p wekesa
    puts
    wekesa.add_academic_qualification(:KCPE)
    wekesa.add_academic_qualification(:KCSE)
    wekesa.add_academic_qualification(:Bachelors)
    wekesa.add_academic_qualification(:Masters)
    wekesa.add_academic_qualification(:Masters)

    p wekesa.academic_qualification
    p wekesa

```
