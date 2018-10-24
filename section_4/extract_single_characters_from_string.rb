story = "Once upon a time in a land far, far away"

p story.length

# comps start counting from 0
# index position - order within the entire string

p story[0]
p story[-1] #from the last character (no longer from zero)
p story [-100] #if it is beyond, returns nil if it doesnt exist

## method to pick the character
p story.slice(23)

p story.slice(-30)
p story.slice(450)
p story[17]


## extracting multiple strings

p story[5,4]
p story[0,5]
p story.slice(0,10)
p story[0,40]

my_story = story[0,story.length]
p my_story

p story.slice(0, story.length)

p story[-5,5]
p story.slice(-10,10)
