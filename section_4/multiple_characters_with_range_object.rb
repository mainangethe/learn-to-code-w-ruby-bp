story = "Once upon a time in a land far, far away..."

#extracting using a range
p story [27..39]

p story [27..story.length]

p story.slice(17..29)

# 3 dots says except the last number
p story.slice(17...32)

# numbers extending the end cuts at the end
p story[32..100] # no errors

#same with slice
p story.slice(23...2000)

#you can mix pos & neg numbers

p story[25..-9]
p story[20..-1]

p story.slice(17..-2)
