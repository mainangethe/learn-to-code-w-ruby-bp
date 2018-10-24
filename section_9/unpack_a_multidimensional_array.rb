users = %w[Gaciku Rita Judy Njoki]
users_multi_arary = [["Gaciku", 36, "Female"],
                    ["Rita" ,32, "Female"],
                    ["Judy", 30, "Female"],
                    ["Njoki", 28, "Female"]]

p users_multi_arary[-1]

# to go deeper
p users_multi_arary[-1][-2] #Njoki's Age

gaciku, rita, judy = users_multi_arary

p gaciku

p rita

p judy

# we never assigned njoki thus (p njoki) is an error
