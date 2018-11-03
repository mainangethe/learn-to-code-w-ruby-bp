# converting time objects to other objects

now = Time.new(2000, 2, 15)

p now.yday
p now.wday # always start on 0(SUN)
p now.mday # day of the month

puts ".... Converting to a String ..........."
p now.to_s # converts to string
p now.to_s.class
puts

puts ".... C Time Method ..........."
# C time
p now.ctime
p now.ctime.class # string
puts

puts ".... Converting to an Array ..........."
# Array conversion
p now.to_a
p now.to_a.class
puts
