def value_count(hash, value)
     sum = 0
     hash.each do |key, val|
         if value == val
             sum += 1
         end # end of if
     end # end of do
     sum
end # end of method

hash = {a:5, b:2, c:3, d:5 }

p value_count(hash,10)
