rng = 1..15

rng.include? 4

rng.include? 45

even_nums = rng.select(&:even?)
even_sum = even_nums.reduce(:+)

puts "even numbers are #{even_nums}"
puts "sum of even numbers are #{even_sum}"
