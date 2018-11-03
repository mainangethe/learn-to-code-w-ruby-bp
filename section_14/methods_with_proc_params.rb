# using methods with proc parameters
def talk_about(name, &myproc)
    puts "Let me tell you about #{name}"
    myproc.call(name)
end

good_things = Proc.new do |name|
    puts "#{name} is a genius!"
    puts "#{name} is handsome"
end # end of block

bad_things = Proc.new do |name|
    puts "#{name} is stupid!"
    puts "I can't stand #{name}"
end

talk_about("Ng'ethe", &good_things)
talk_about("Boris", &bad_things)

# Let's update our menu method to know accept a proc
# We will also pass it the name of the restaurant

def leta_menu(name, &menu_proc)
    puts "Hi Beloved Customer"
    menu_proc.call(name)
end # end of method

breako = Proc.new { |name| puts "Here at #{name} We have Tea, Mandazi, Chapati, Pilau and Nyoyo"}

leta_menu("Loft Kitchen", &breako)
