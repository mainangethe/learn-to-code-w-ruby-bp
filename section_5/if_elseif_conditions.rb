colour  = "Yellow"

if colour == "Green"
  puts "Nguhi likes this"

elsif colour == "Pink"
  puts "So Nguhi"

elsif colour == "Yellow"
  puts "Weeeez KHALIFAAA!!"
end

num = 15
if num < 25
  puts "You got a D"

elsif num < 45
  puts "You got a C"

elsif num < 75
  puts "You got a B"

elsif num <= 100
  puts "You got an A"

elsif num > 100
  puts "Go see the principal mister"

elsif num < 0
  puts "Dude, Pull up your socks"
end



def exam_grade(num)
  if num.between?(0,30)
    puts "You got a D"

  elsif num.between?(31,60)
    puts "You got a C"

  elsif num.between?(61, 79)
    puts "You got a B"

  elsif num.between?(80, 100)
    puts "You got an A"

  else
    puts "Go see the principal mister"
  end
end

exam_grade(95)
