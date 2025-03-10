# Docs:
# * https://ruby-doc.org/core-3.1.0/Integer.html#method-i-downto
# * https://ruby-doc.org/core-3.1.0/Integer.html#method-i-upto

# Iterates from 5 to 1 with step 1 (including 5 and 1)
# Returns first value
5.downto(1) { |count| puts count } #=> 5
# OUTPUT:
#   5
#   4
#   3
#   2
#   1

# Iterates from 1 to 5 with step 1 (including 1 and 5)
# Returns first value
1.upto(5) { |count| puts count } #=> 1
# OUTPUT:
#   1
#   2
#   3
#   4
#   5

# Edge cases:
1.downto(5) { |count| puts count } #=> 1
# OUTPUT: (outputs nothing)

5.upto(1) { |count| puts count } #=> 5
# OUTPUT: (outputs nothing)

# Iterate to the closest Integer, returns first value
10.downto(5.2) { |count| puts count } #=> 10
# OUTPUT:
#   10
#   9
#   8
#   7
#   6

5.upto(10.3) { |count| puts count } #=> 5
# OUTPUT:
#   5
#   6
#   7
#   8
#   9
#   10

1.downto("qwe") { |count| puts count }  #=> comparison of Integer with String failed (ArgumentError)
5.upto("qwe") { |count| puts count }    #=> comparison of Integer with String failed (ArgumentError)

10.4.downto(5) { |count| puts count } #=> undefined method `downto' for 10.4:Float (NoMethodError)
1.6.upto(5) { |count| puts count }    #=> undefined method `downto' for 1.6:Float (NoMethodError)
