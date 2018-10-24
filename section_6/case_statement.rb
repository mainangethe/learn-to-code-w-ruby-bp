def rate_my_food(food)
    case food
    when "Steak" #when food equals to Steak
        "Pass the steak sauce! That's delicious"
    when "Sushi" # when food equals Sushi
        "Great choice! Let's try it"
    when "Tacos", "Burritos", "Quesadillas"
        "Cheesy & filling! Might be a perfect combination"
    when "Tofu", "Brussel Sprouts"
        "Disgusting!! YUCK!"
    else
        "I don't know about that food!"
    end # end of case
end # end of method

puts rate_my_food("Tacos")
puts rate_my_food("Tofu")
puts rate_my_food("Sushi")
puts rate_my_food("Fish")

# def calculate_school_grade(grade)
#     case grade
#     when 90..100
#         "A"
#     when 80..89
#         "B"
#     when 70..79
#         "C"
#     when 60..79
#         "D"
#     else
#         "F"
#     end # end of case
#
# end # end of method


## Refactored
def calculate_school_grade(grade)
    case grade
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..79 then "D"
    when -100..-1 then "Invalid Grade"
    when 101..1000 then "Invalid Grade"
    else "F"
    end # end of case
end # end of method

p calculate_school_grade(95)
p calculate_school_grade(73)
p calculate_school_grade(89)
p calculate_school_grade(60)
p calculate_school_grade(15)
p calculate_school_grade(-1)
p calculate_school_grade(-50)
