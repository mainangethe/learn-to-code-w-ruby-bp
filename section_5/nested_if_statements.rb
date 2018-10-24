def meal_plan(time_of_week, time_of_day)
    if time_of_week == "weekday"

        if time_of_day == "breakfast"
        "Cereal"
        elsif time_of_day == "lunch"
            "Sandwich"
        #elsif time_of_day == "dinner"
        else
            "Fish"
        end #weekday daytime evaluation

    elsif time_of_week == "weekend"

        if time_of_day == "breakfast"
            "Toast"
        elsif time_of_day == "lunch"
            "Sweet & Sour Pizza"
        elsif time_of_day == "dinner"
            "Steak"
        end #weekend daytime evaluation

    end #if - weekday/weekend evaluation

end #method

p meal_plan("weekend", "lunch")
