# using the values at method

channels = %w[NTV CITIZEN KBC INOORO KTN KASS]

p channels.values_at(1,4) # only loads the items at the stated numbers

p channels.values_at(1..4) # can use an array

p channels.values_at(0, 3, -2) # can include duplicates

p channels.values_at(100) #anything beyond returns nil

#returns a new array
