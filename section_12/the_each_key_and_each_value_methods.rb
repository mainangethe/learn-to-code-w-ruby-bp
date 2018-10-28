# the each key and each value methods

salaries = {
            diretor: 1000000,
            producer: 2000000,
            ceo: 3000000
}

salaries.each_key do |position|
    puts "Employee Records: ------"
    puts "#{position}"
end

salaries.each_value { |salary| puts "The next employee earns: #{salary}"}

# challenge custom each_key & custom each_value

def custom_hash_keys(hash)
    keys_array = []
    hash.each { |k,v| keys_array << k }
    keys_array
end
def custom_hash_values(hash)
    values_array = []
    hash.each { |k,v| values_array << v }
    values_array
end
p custom_hash_keys(salaries)
p custom_hash_values(salaries)
