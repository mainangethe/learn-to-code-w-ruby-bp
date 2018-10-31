# comparable methods on a time object
birthday = Time.new(2018, 4, 2)
moi_day = Time.new(2018, 10, 10)
jamhuri_day = Time.new(2018, 12, 12)
new_year = Time.new(2018, 1, 1)


p birthday < new_year

p jamhuri_day > moi_day

p moi_day == Time.new(2018,10,10)

new_year != Time.new(2018,1,1,1)
puts
# between method
puts moi_day.between?(birthday, jamhuri_day) # true
puts moi_day.between?(Time.new(2018,10,20), jamhuri_day) # false
