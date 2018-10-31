# converting the time object to a custom formatted string
# we use the string from time method (.strftime)
# you can direct how you would like to structure

# Examples of Available directives
# %b - Abbreviated month name ("Jan")
# %B - Full month name ("January")
# %d - Day of the month (1..31)
# %j - Day of the year (1..366) Julian Date
# %m - Month as a number (1..12)
# %w - Day of the week as a number (0..6)
# %x - Preferred representation for date (no time)
# %y - Two-digit year (no century)
# %Y - Four-digit year

today = Time.new
p today
p today.to_s

# custom format
p today.strftime("%d %B, %Y")
