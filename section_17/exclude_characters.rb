# how to exclude characters in a regexp
# we use the "^" caret symbol to tell the system to ignore all characters that follow it

sales = "I bought 9 apples, 25 bananas, and 4 oranges at the store."

# to remove the vowels we add aeiou in the list
puts "Without the small letter vowels"
p sales.scan( /[^aeiou]/ )
puts

# To exclude even the capital letters I add AEOIOU as well
puts "Without the capital and small letter vowels"
p sales.scan( /[^aeiouAEIOU]/ )
puts

# To exclude even the whitespaces, we add the \s in the list
puts "Without the vowels and whitespaces"
p sales.scan( /[^aeiouAEIOU\s]/ )
puts

# To exclude even the numbers/digits, we add the \d in the list
puts "Without vowels, whitespaces and digits"
p sales.scan( /[^aeiouAEIOU\s\d]/ )
puts

# To remove the special character "." fullstop we add the \. in the list
puts "Without the vowels, whitespaces, digits and fullstops"
p sales.scan(/[^aeiouAEIOU\s\d\.]/)
puts

# To remove the special character "," comma, we add , to the list
# I added the "\," just to show we were removing the comma
puts "Without vowels, whitespaces, digits, fullstops and commas"
p sales.scan( /[^aeiouAEIOU\s\d\.\,]/ )
puts

p sales.scan( /[^aeiouAEIOU\s\d\.\,]/ ).length
