def speak_the_truth
    yield "Ng'ethe" if block_given?
end

speak_the_truth { |name| puts "#{name} is brilliant" }
speak_the_truth { |name| puts "#{name} is Incredible" }

#example 2
def speak_the_truth(name, adjective)
    yield( name, adjective ) if block_given?
end

speak_the_truth("Ng'ethe", "The Don") { |blok_name, blok_adjective | puts "#{blok_name} is #{blok_adjective}!"}

# example 3
def number_evaluation(num1, num2, num3)
    puts "Inside the method"
    yield(num1, num2, num3) if block_given?
end

product = number_evaluation(5,10, 15) { |n1, n2, n3| n1 * n2 * n3 }
p product

sum = number_evaluation(5,10, 15) { |n1, n2, n3| n1 + n2 + n3 }
p sum

# Let's create a menu

def breakfast_menu_creation
    breakfast = []
    puts "We will be creating a Breakfast Menu"
    yield breakfast
end # end of method
lk_bf = breakfast_menu_creation { |breakfast| breakfast << "Bread,80"}
p lk_bf # [ "Bread, 80" ]

# Sending multpiple arguments
def full_menu_creation
    breakfast = []
    lunch = []
    yield( breakfast, lunch )
    puts breakfast
    puts lunch
end # end of method

full_menu_creation do |breakfast, lunch|
    breakfast << "Bread,10"
    lunch << "Githeri, 70"
end # end of block
