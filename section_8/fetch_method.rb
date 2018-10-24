names = %w[Njoki Njeri Wamuyu Wanjiru Wacuka Mwihaki Mumbi]

p names[2] # 3rd item
p names.fetch(2) # does ths same as the []
#p names.fetch(100) # crashes , doesn't give a nil by default
p names.fetch(100, false)
p names.fetch(100, "Unknown")
p names.fetch(100, nil)
p names.fetch(100, names.fetch(names.length-1)) # can force to give anything
