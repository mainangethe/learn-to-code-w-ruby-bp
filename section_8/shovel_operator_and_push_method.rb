# using the push method
locations = %w[House Airport Bar]

p locations
locations.push("Restaurant")
p locations
# push always adds the item to be the last items

locations.push("Saloon", "Pub")
p locations

#using the shovel operator

locations << "Mall"
p locations
# adding multiple

locations << "Hospital" << "Market"

p locations


#using the insert method

locations.insert(3, "Train Station")
p locations

locations.insert(2, "Subway", "Skyscraper")
p locations
