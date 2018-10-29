# work like arrays
# have key - value format
# based to be unordered
# you retrieve based on the key
# use the {} curly braces to create one
# best way to understand hashes is to think of a dictionary
# format is key then value
# use the => to assign the key to the value
# this is also called the Rocket Symbol "=>"

empty_hash = {}
p empty_hash

p empty_hash.class

empty_array = []
p empty_array
p empty_array.class

puts "...... Creating Hashes ......."

nfl_roster = { "Tom Brady" => "New England Patriots",
                "Tony Romo" => "Dallas Cowboys",
                "Rob Gronkoski" => "New England Patriots"}

# hash keys are case sensitive
nba_roster = { "Cleveland Cavaliers" => ["LeBron James", "Kevin Love", "Kyrie Irving"],
                "Golden State Warriors" => ["Stephen Curry", "Klay Thompson", "Kevin Durant"]}
# extracting based on keys
puts "...... Extracting Hashes ................"
# whole hash
puts "1. Retrieving a whole hash"
p nfl_roster

puts "2. Retrieving based on Keys"
# single key
p nfl_roster["Tony Romo"]

p nba_roster["Golden State Warriors"]

# Let's create a restaurant menu as a hash

p loft_kitchen_breakfast_menu = {
                    :chai => 20,
                    :chai_kubwa => 25,
                    :kahawa => 35,
                    :mandazi => 10
                    }
