#empty only returns true if the argument is empty

empty_str = ""
p empty_str.empty?

p empty_str.nil?
#nil is not empty

name = "Donald Duck"
last_name = name[100,4]
p last_name

p last_name.nil?
