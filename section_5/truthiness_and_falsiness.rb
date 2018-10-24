#only false / nil are considered falsiness

#everything else is #truthy
if "Hello"
  puts "That is true"
end

if ""
  puts "Imagine , I still ran with blank strings"
end

if {}
  puts "imagine I still run with bracy"
end

if []
  puts "imagine, I still run with an empty array"
end

if 5..9
  puts "Imagine, I stil run with a range"
end

if
  puts "Imagine even with 0 condition, I still run"
end
