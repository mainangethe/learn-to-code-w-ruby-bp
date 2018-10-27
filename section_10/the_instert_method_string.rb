# the insert method on a string
# inserts a chars on a specific index

typo = "GeorgWashington"

typo.insert(5,"e ")
p typo
# it mutates / modifies the original string

#index value can be negative
typo2 = "George Washingto"
typo2.insert(-1,"n")
p typo2
