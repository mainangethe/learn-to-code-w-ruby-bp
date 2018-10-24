def praise_person(name)
  puts "#{name}, you are Amazing!"
  puts "#{name} is the Don"
  puts "#{name} loves Nguhi"

end

praise_person "Ng'ethe"
praise_person("Jackie")

#multiple argurements
def praise_person(name, age)
  puts "How are you #{name}?"
  puts "#{age}, are you that old?"
  puts "You will be #{age + 5} in 5 years"
end

praise_person("Kaki", 32)
