# Notes:
#   * It doesn't need to initialize :num before, just an example of overriding

numbers = [3, 5, 7]
num = 100

for num in numbers # overrides (not just shadows) :num on line 5
  p num
end
# OUTPUT:
#   3
#   5
#   7

num #=> 7 (the last value from iterations, :num is not a block variable as with .each method, so it's available outside the loop)

for num in 1..5
  puts num
end #=> 1..5
# OUTPUT:
#   1
#   2
#   3
#   4
#   5

num #=> 5 (available after loop execution)
