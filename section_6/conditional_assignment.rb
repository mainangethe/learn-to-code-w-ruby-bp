# Conditional assignment should only replace
# if the value is nil

y = nil
p y

y = 5
p y

#conditioanl assignment symbol "||="

z = nil
p = z

z ||= 5
p = z

z ||= 10
p = z #didn't work as z is no longer nil

greeting = "Hello"
extraction = 5
letter = greeting[extraction] # H, e, l, l, o
letter ||= "No letters found"

p letter
