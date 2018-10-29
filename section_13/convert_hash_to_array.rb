spice_girls = {
                scary: "Melanie Brown",
                sporty: "Melanie Chisholm",
                baby: "Emma Bunton",
                ginger: "Geri Halliwell",
                posh: "Victoria Beckham"
                }

p spice_girls
# to convert to an array use the ".to_a" method

p spice_girls.to_a

# to convert to a hash, we need a multi-dimensional array
# we use the ".to_h" method

power_ranges =  [
                [:red, "Jason"],
                [:black, "Zack"],
                [:blue, "Billy"],
                [:yellow, "Trini"],
                [:pink, "Kimberly"]
                ]

p power_ranges
p power_ranges.to_h
