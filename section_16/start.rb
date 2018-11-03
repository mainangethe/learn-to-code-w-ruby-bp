# how to load a file to another
# done using the .load method

puts "This is the beginning!"

load "end.rb"

puts "Alright, that was successful."

# reload the file
# using "./" means in the current directory
load "./end.rb"

if 8 < 5
    # load "end.rb"
end

puts "... Using the Require Method ......."
# the require and # require relative methods
# works like .load but with a difference
# require a feature.. used to classes etc.
# require "./end.rb"
# can't run more than once
# it starts at the default ruby installation directory, thus you need to say where your file is

# require "./end" # you don't need to specify the .rb # this won't run

puts "..... Using the Require Relative Method ........"
# identitcal to the "require" method
# only that it always assumes the file you want to load is in the same dir as the one calling it.
# also ony runs once
require_relative "end"
require_relative "end"


puts "..... Moving down a folder strucure ............."
# Moving down a file structure using require_relative
require_relative "a/b/epilogue"
