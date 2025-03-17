# IF
number = 5000
verified = true

if number > 2500 && verified
  "Huge number!"
end #=> Huge number!

"Huge number!" if number > 2500 && verified #=> Huge number!

# UNLESS
x = 8

unless x > 10
  "x is not greater than 10"
end #=> x is not greater than 10

"x is not greater than 10" unless x > 10 #=> x is not greater than 10

# Edge cases:
# when body has more than 1 line of code
unless x > 10
  puts "x is not greater than 10"
  puts "One more line"
end
# OUTPUT:
#   x is not greater than 10
#   One more line

puts "x is not greater than 10"; puts "One more line" unless x > 10
# OUTPUT:
#   x is not greater than 10
#   One more line
