# predicate methods on time objects
# boolean methods always end with a question

nguhis_bday = Time.new(1992, 6, 8)
p nguhis_bday.monday?
p nguhis_bday.sunday?

# daylight savings time check
puts

p nguhis_bday.dst?
jamhuri_day = Time.new(2018, 9, 12)
p jamhuri_day.dst?
