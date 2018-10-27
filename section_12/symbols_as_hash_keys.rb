# symbols
# light weight strings
# format is ":" colon then the word

:name # symbol

p "name"
p "name".class
p :name.class
p "name" == :name # should be false

p :name.methods.length # only 79 methods
p "name".methods.length # 170 methods on the string

# person = {  :name => "Ng'ethe",
#             :age => 27,
#             :handsome => true,
#             :languages => ["Kikuyu", "English", "Sheng", "Swahili"]}


# Ruby 1.9 created a shorthand to use symbols while creating hashes
person = {  name: "Ng'ethe",
            age: 27,
            handsome: true,
            languages: ["kikuyu", "english", "sheng", "swahili"]}

p person[:name]
p person[:age]
p person[:languages]
