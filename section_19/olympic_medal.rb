class OlympicMedal

# <, <=, >=, >=, <=>, .between?

include Comparable

MEDAL_VALUES = { "Gold" => 3, "Silver" => 2, "Bronze" => 1 }

attr_reader :type

def initialize(type, weight)
    @type = type
    @weight = weight
end# end of initialize

def <=>(other)

    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
        -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
        0
    else
        1
    end # end of if

end # end of spaceship

end # end of class

bronze = OlympicMedal.new( "Bronze", 5 )
silver = OlympicMedal.new( "Silver", 10 )
gold = OlympicMedal.new( "Gold", 3 )

puts bronze > silver
puts bronze < silver
puts gold >= silver
puts gold <= bronze
puts silver != bronze
puts silver == gold
puts bronze == bronze
puts silver.between?(bronze, gold)
