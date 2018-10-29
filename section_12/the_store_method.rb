# adding key value pairs to hashes using the store method

menu = {chai: 20, mandazi: 10, bread: 10, coffee: 35}

p menu[:chai]

# you can assign new values using the = symbol
menu[:ndengu_a] = 80

# you can also use the symbol to update the values of existing key-value pairs
menu[:bread] = 15

p menu[:bread]

# using the store method
# mutates by default. doesn't need a bang option

menu.store(:mbosho, 80)# 1st arg = key, 2nd arg = value
p menu
menu.store(:ndengu, 80)

p menu[:ndengu]
