# Use the times method to output the first ten multiples of 3
# 3, 6, 9, 12, 15, 18, 21, 24, 27, 30

10.times { |i| puts 3 * (i + 1) }

10.times do |i|
  puts 3 * (i + 1)
end
