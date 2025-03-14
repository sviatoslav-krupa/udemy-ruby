# Notes:
#   * start counting from 0, :index always is a second parameter

colors = %w[red blue yellow orange]

colors.each_with_index do |color, index|
  puts "#{index}: Color #{color}"
end #=> ["red", "blue", "yellow", "orange"]
# OUTPUT:
#   0: Color red
#   1: Color blue
#   2: Color yellow
#   3: Color orange

# Edge cases:
colors.each_with_index do |index, color|
  puts "#{index}: Color #{color}"
end #=> ["red", "blue", "yellow", "orange"]
# OUTPUT:
#   red: Color 0
#   blue: Color 1
#   yellow: Color 2
#   orange: Color 3
