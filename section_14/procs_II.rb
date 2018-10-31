def greeter
    puts "I'm inside the greeter method"
    yield
end

phrase = Proc.new { puts "Inside the proc"}

greeter(&phrase)

# a proc can be called using the call method

hi = Proc.new { puts "Hi there"}

5.times(&hi)
puts
puts ".... calling a proc alone ......"
hi.call

def leta_menu
    puts "Welcome to Loft Kitchen"
    puts "Here is our menu"
    yield
end # end of method

breako = Proc.new { puts "We have Tea, Mandazi, Chapati, Pilau and Nyoyo"}

leta_menu(&breako) # should place the last statement from the proc

# breako.call # "We have Tea, Mandazi, Chapati, Pilau & Nyoyo"
