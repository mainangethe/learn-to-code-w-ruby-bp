# Private methods
# Instance methods can call other methods within itself (These are public methods)
# We can call them even with objects.
# initialize is however a private method. An object can't call it.
# A private method cannot be used
# By default, an instance method is public
# To make it private we add the keyword private just above the method definition


class Gadget
    def initialize(username, password)
        @username = username
        @password = password
        @production_number = generate_production_number
    end # end of method

    attr_accessor :username
    attr_reader :production_number
    attr_writer :password

    def to_s
        "Gadget #{@production_number} has the username #{@username}.
        It is made from the #{self.class} class and it
        has the ID #{self.object_id}."
    end # end of method
    private
    def generate_production_number
        start_digits = rand(10000..99999)
        end_digits = rand(10000..99999)
        alphabet = ("A".."Z").to_a
        middle_digits = "#{Time.now.year}"
        5.times { middle_digits << alphabet.sample }
        "#{start_digits}-#{middle_digits}-#{end_digits}"
    end

end # end of class

phone = Gadget.new("user", "password")
p phone.production_number
