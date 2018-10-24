numbers = [3, 5, 7]
num = 10
p num
numbers.each { |num| puts num} # even if we reuse the same variable
p num # origitnal value of num is retained

## how the for loop works

for num in numbers
    puts num

end

p num # num still exists after the for loop is done

#for loop in a range

rng = 1..10

rng.each do |rng_number|
    puts rng_number
end


for rng_number in rng
    puts rng_number
end

p rng_number
