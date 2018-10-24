p "hello world".length #returns the total number of chars

p [1, 2, 3, 4, "Hello", 3.14, nil].length #starts counting at 1

p [1, 2, 3, 4].size #does the same thing

p [].length #tells you it's empty

p [1, 2, 3, 4, 2, 3, 2].count #without variables works like size / length

p [1, 2, 3, 4, 2, 3, 2, nil].count(2) # counted only 2's


p [1, 2, 3, 4, 2, 3, 2, nil].count(nil) # counted only nils
