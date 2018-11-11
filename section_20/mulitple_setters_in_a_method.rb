# Validation


class Gadget
    def initialize(username, password)
        @username = username
        @password = password
        @production_number = generate_production_number
        @apps = []
    end

    attr_accessor :username
    attr_reader :production_number, :apps

    def to_s
        "Gadget #{production_number} has the username #{username}.
        It is made from the #{self.class} class and it
        has the ID #{object_id}."
    end

    def reset(username,password)
        # most secure and most efficient way to accomplish
        self.username = username
        self.password = password
        self.apps = []

    end

    def password=(new_password)
        @password = new_password if validate_password(new_password)
    end

    private

    attr_writer :apps

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
    end

end # end of class

phone = Gadget.new("user", "password")
p phone.production_number
p phone.username
