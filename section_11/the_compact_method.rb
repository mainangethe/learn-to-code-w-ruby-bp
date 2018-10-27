# the compact method on an array
# removes the nil values inside it

# example 1 - no nil
p [1, 2, 3].compact

# example 2 - nils present
p [1,nil, 2, 3, nil].compact # removes the nil

# example 3 - false & nil are not the same
p [1, nil, 2, 3, false, nil, false, 4].compact #false remains

# example 4 - empty and nil are not the same
p [].compact

#has a bang "!" method
nums = [1, 2, 3]
sports = ["Ruby", "Football", "Basketball", nil, "Swimming", "Running", nil]
p sports
# sports.compact!
# p sports #permanent

puts "......CHALLENGE......."
## challenge
# create custom code to remove nil

def compakt(array)
    final = []
    array.each { |char| final << char unless char.nil? }
    final
end# end of method

p compakt(sports)
