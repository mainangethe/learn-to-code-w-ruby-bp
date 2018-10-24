## use the &&  or ||

age = 25
ticket = ""
id = true

if (age > 21 && ticket == "General Admission" && id == true)
  puts "Welcome to Sky Theatre, Today we are watching 'Rafiki'"
else
  puts "Management reserves the right of Admission, GOODBYE!"
end

#refactoring
if (age > 21 && ticket == "General Admission" && id) #we don't need to compare booleans with each other
  puts "Welcome to Sky Theatre, Today we are watching 'Rafiki'"
else
  puts "Management reserves the right of Admission, GOODBYE!"
end

#imagine - there are ticket are multiple
if (age > 21 && ticket && id == true) #though this can fail with blank ticket
  puts "Welcome to Sky Theatre, Today we are watching 'Rafiki'"
else
  puts "Management reserves the right of Admission, GOODBYE!"
end


budget = 5
price = 10
mood = "Happy"

if (budget > price || mood == "Happy")
  puts "I'm going to buy the item"
end
