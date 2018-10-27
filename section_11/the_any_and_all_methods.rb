# the any? and all? methods
# they are all predicate methods

## any method
# takes a block
# always returns a boolean

puts ".........ANY? METHOD......."

nums1 = [1, 3, 5, 7, 2]
nums2 = [1, 3, 5, 7, 9]
p nums1.any? { |num| num.even? } #true if any 1 is met

p nums2.any? { |num| num.even? } # false

#reverse is all
#only returns true if all match the condition
# .all? symbol

puts "..........ALL? METHOD........"
p nums1.all? { |num| num.even? } # false
p nums2.all? { |num| num.odd? }  # true
