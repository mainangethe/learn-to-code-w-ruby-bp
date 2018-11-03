# we will write to a file using Ruby

File.open("myfile.txt", "w") do |file|
    file.puts "I'm creating this from Ruby"
    file.write "No line break here."
    file.write "Pretty cool!"
    file.puts "If I click twice, I will override"
end# end of the method

# 'w' argument will override with all it's content
# to always write in a new file, use the 'a' append option
File.open("myfile.txt", "a") do |file|
    file.puts "I'm creating this from Ruby"
    file.write "No line break here."
    file.print "New line using the file.print"
    file.puts "If I click twice, I will override"
end# end of the method
