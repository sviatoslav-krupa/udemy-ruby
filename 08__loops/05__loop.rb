# Notes:
#   * Infinite loop (needs `break` to stop the execution)

i = 0

loop do
  puts i

  i += 1

  break if i >= 5
end #=> nil
# OUTPUT:
#   0
#   1
#   2
#   3
#   4
