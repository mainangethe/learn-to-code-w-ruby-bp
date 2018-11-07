module LengthConversions
    WEBSITE = "https://www.angelo.edu/dept/agriculture/faculty/scott_conversions.php"

    # self. allows the usage of the method within the module
    def self.miles_to_feet(miles)

        miles * 5280
    end # end of miles_to_feet method

    def self.miles_to_inches(miles)
        feet = miles_to_feet(miles)
        feet * 12
    end # end of miles_to_inches method

    def self.miles_to_centimeters(miles)
        inches = miles_to_inches(miles)
        inches * 254
    end # end of miles_to_centimeters method

    def self.miles_to_kilometers(miles)
        miles * 1.609
    end # end of miles_to_kilometers method

end # end of LengthConversions module

puts LengthConversions::WEBSITE

puts LengthConversions.miles_to_feet(100)
puts

puts LengthConversions.miles_to_inches(200)
puts

puts LengthConversions.miles_to_kilometers(100)
