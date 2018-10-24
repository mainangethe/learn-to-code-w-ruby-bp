if 5 < 2
  puts "That math statement is true"
end

def num_compare(num1,num2)
  if num1 < num2
    puts "#{num2} is an adult"
    puts "#{num1} is a baby"
  end
  if num1 > num2
    puts "#{num1} is an adult"
    puts "#{num2} is a baby"
  end
  if num1 == num2
    puts "#{num1} and #{num2} are the same age"
  end
end

password = "topsecret"
if password == "topsecret"
  puts "congratulations, we are now logging you into our system"
end

word = "kangaroo"

if word.length == 8
  puts "That word has 8 letters"
end

def num_chars(word)
  length = word.length
  puts "#{word} has #{length} number of letters"
end





word = "zebra"
if word.include?("eb")
puts "Your word, has eb in it"
end


if 5.odd?
puts "This is an odd number"
end
