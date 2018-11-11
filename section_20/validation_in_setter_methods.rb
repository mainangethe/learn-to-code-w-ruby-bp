# Validation


class Gadget
    def initialize(username, password)
        @username = username
        @password = password
        @production_number = generate_production_number
    end # end of method

    attr_accessor :username
    attr_reader :production_number

    def to_s
        "Gadget #{production_number} has the username #{username}.
        It is made from the #{self.class} class and it
        has the ID #{object_id}."
    end # end of method

    def password=(new_password)
        @password = new_password if validate_password(new_password)
    end

    private
    def generate_production_number
        start_digits = rand(10000..99999)
        end_digits = rand(10000..99999)
        alphabet = ("A".."Z").to_a
        middle_digits = "#{Time.now.year}"
        5.times { middle_digits << alphabet.sample }
        "#{start_digits}-#{middle_digits}-#{end_digits}"
    end

    def validate_password(new_password)
        new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
    end # end of validate method

end # end of class

phone = Gadget.new("user", "password")
p phone.production_number
p phone.username


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
    attr_reader :joined_date, :salary

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

    #attr_reader :salary

end

# we can now test them

wekesa = Employee.new("Tom Wekesa", 27, 6) # Salary is KES 157,000
ngunjiri = Employee.new("Arnold Ngunjiri", 23, 9) # Salary is KES 198,000
p wekesa
p ngunjiri
