# the flatten method
# removes all the nested arrays within the main array
# and gives you back a single 1 dimensional array

registrations = [
                ["Bob", "Dan", "Susan"],
                ["Rick", "Susan", "Molly"],
                ["Pierrce", "Sean", "George"]
]

# you can assign and call them indivdually
a, b, c = registrations
p a # bob array
p b # rick array
p c # pierrece array

# it is recurrsive irrespective of the total number of nested arrays
puts " ... FLATTEN Method......"
p registrations.flatten
# doesn't mutate
puts "........ Original Array.........."
p registrations

# has a bang method
puts "......... BANG ........."
reg = registrations.dup
puts "......BEFORE>....."
p reg
reg.flatten!
puts "...... AFTER ........"
p reg
