# Time object
# used to store dates and time

# You can create using the .new method
puts Time.new #produces the time now
today = Time.new
p today.class

# you can use the Time.now method
now = Time.now
p now

# With no arguments Time.new will be the same as Time.now
# you can add a year
p Time.new(2017) # assumes everything else is as first (1st of Jan 2017 at midnight)
# you can add a month
p Time.new(2016, 5) # assumes everything else is as first (1st of May 2016 at midnight)

# you can a whole date
p Time.new(2015, 2, 28) # assumes time is as first (28th of Feb 2015 at midnight)

# you can specify date and hour
p Time.new(2014, 1, 15, 10) # assumes mins & secs else is as first (15th of Jan 2014 at 10am)

#you can add date , hour and min
p Time.new(2013, 12, 8, 18, 30) # assumes seconds else is as first (8th of Dec 2013 at 6.30pm)

# you can add date, hour, min and seconds
p Time.new(2012, 9, 2, 23, 40, 59) # Specific timestamp (2nd of Sep 2012 at 11:40:59pm)
