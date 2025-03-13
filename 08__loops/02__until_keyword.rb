# Notes:
#   * until = while not (the same as unless and if)

i = 1
until i > 9
  # Evaluates body of a loop til condition is true
  puts i
  i += 1
end #=> nil
# OUTPUT:
#   1
#   2
#   3
#   4
#   5
#   6
#   7
#   8
#   9

# Inline syntax
(puts i; i += 1) until i > 9 #=> nil
# OUTPUT:
#   1
#   2
#   3
#   4
#   5
#   6
#   7
#   8
#   9
