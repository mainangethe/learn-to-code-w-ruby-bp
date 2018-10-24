password = "sexy"

if password != "whiskers"
    puts "No Entry Mister!"
else
    puts "Welcome Sensei"
end # end of if

## Using unless

unless password == "whiskers"
    puts "Not allowed!"
else
    puts "Welcome Sensei!"

end

## using the ternary operator

p password == "whiskers" ? "Welcome Sexy" : "Not allowed Missy"

unless password.include?("a")
    puts "Must include a small letter"
end
