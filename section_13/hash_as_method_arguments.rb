# Using hashes as arguments in methods
def calculate_total_1(price, tip, tax)
    tax_amount = price * tax
    tip_amount = price * tip
    price + tip_amount + tax_amount
end # end of method

puts calculate_total_1(2400.50, 0.18, 0.16)

# imagine if we reversed the arguments
puts calculate_total_1(0.18, 0.16, 2400.5)

# to resolve this , we use the argurments as a hash

def calculate_total_2(info)
    tax_amount = info[:price] * info[:tax]
    tip_amount = info[:price] * info[:tip]
    info[:price] + tax_amount + tip_amount
end # end of method

loft_kitchen_bill = {
                    price: 200,
                    tax: 0.16,
                    tip: 0.02
                    }
p calculate_total_2(loft_kitchen_bill)

# now it doesn't matter how you organize the bill
loft_kitchen_alternative_bill = {
                                tax: 0.16,
                                tip: 0.02,
                                price: 200
}

p calculate_total_2(loft_kitchen_bill) == calculate_total_2(loft_kitchen_alternative_bill)

# another feature in ruby that is used in professional code

p calculate_total_2({tax: 0.05, tip: 0.3, price: 9.99})

# in methods, if the last value in the argument is a hash,
# you don't need to enter the curly braces
puts ".. Computing without {}........."

p calculate_total_2(tax: 0.05, tip: 0.3, price: 9.99)
