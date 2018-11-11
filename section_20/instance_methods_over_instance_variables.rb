# Always refer to instance methods over instance variables
# when referrencing variables

class BankAccount
    def initialize
        @amount = 500000
    end
    def status
        "Your bank account has a total of KES #{amount}"
    end

    private
    def amount
        @amount / 100 #pseudo variables - don't actually create a new instance
    end

end

stanchart = BankAccount.new
p stanchart.status

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

    def reset_employee(name, age, experience_years)
        self.name = name
        self.age = age
        self.experience = experience_years
    end

    def joined_date
        @joined_date.strftime("%d %B, %Y")
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
p wekesa.joined_date
wekesa.reset_employee("Wekesa Tom", 27, 6)
