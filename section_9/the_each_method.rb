# candies = %W[Smarties Eclairs Mintchoc]
#
# candies.each do |candy|
#     puts "I love eating #{candy}"
#     puts "It tastes so good!"
# end
#
#
# names = %w[Francis Steve Hope Michael]
#
# names.each { |name| puts name.upcase }
#
# nums = [1,2,3,4,5]
# nums.each do |num|
#     square = num * num
#     puts "The square of #{num} is #{square}"
#
# end


fives = [5, 10, 15, 20, 25, 30, 35, 40]
odd = []
even = []

# fives.each { |num| even << num if num.even? }

# fives.each { |num| odd.push(num) if num.odd? }

def odd_or_even_classifier(nums_array)
    odds = []
    evens = []
    nums_array.each { |num| num.even? ? evens << num : odds << num }
    p odds
    p evens
end # method

threes = [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]

odd_or_even_classifier(threes)
