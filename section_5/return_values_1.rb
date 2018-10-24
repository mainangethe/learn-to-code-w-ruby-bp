#explicit method return - should ideally be used early
def add_two_nums(num1, num2)
  puts "OK, I'm solving your query"
  return num1 + num2
end

p add_two_nums(34,48)

#implicit method returns
def add_two_num(num1, num2)
  puts "OK, I'm solving your query"
  num1 + num2
end

p add_two_num(34,48)
