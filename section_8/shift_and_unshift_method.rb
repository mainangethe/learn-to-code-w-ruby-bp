arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr

arr.shift
p arr

p ext = arr.shift

p three_extracts = arr.shift(3)

#with variables always returns an array

arr.unshift(24)
p arr

#adds value
arr.unshift(500, 300, 100)
p arr
