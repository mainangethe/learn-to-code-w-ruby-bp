# the index & find index methods
# they work the same way
# if value doesn't exist, it returns "NIL"
# nil represents nothingness / null / blank

colours = %w[Red Blue Green Red]

p colours.find_index("Green")

p colours.index("Red")

p colours.index("watermelon")
