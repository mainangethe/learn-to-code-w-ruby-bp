# Adding or subtracting time

start_of_year = Time.new(2018,1,1)

p start_of_year
# ruby uses the seconds to add / remove seconds
p start_of_year + (60) #1 min

p start_of_year + (60 * 60) #60 min / Hour

p start_of_year + (60 * 60 * 24) #24 hours
p start_of_year + (60 * 60 * 24 * 30) #30 days

p start_of_year + (60 * 60 * 24 * 30 * 12) #12 months

def find_day_of_year_by_number(number_of_days)
    current_date = Time.new(2018, 1, 1)
    current_date += (60 * 60 * 24) until current_date.yday == number_of_days
    current_date
end # end of method

p find_day_of_year_by_number(3)
