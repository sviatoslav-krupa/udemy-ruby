# Notes:
#   * For arrays each object in each array is compared (using the <=>, spaceship, three-way comparison operator)

# Docs:
#   * https://ruby-doc.org/core-2.7.0/Array.html#method-i-3C-3D-3E

# Explanation:
#   * https://stackoverflow.com/questions/827649/what-is-the-ruby-spaceship-operator
#
#   -1  0   1
#   <   =   >
#
#   nil - not comparable
#
#   a <=> b :=
#     if a < b then return -1
#     if a = b then return  0
#     if a > b then return  1
#     if a and b are not comparable then return nil

2 <=> 5         #=> -1
5 <=> 5         #=> 0
10 <=> 5        #=> 1
"qwe" <=> true  #=> nil

[3, 4, 5] <=> [3, 4, 5]     #=> 0
[3, 4, 5] <=> ["qwe", 4, 5] #=> nil (3 and "qwe" are not comparable)
[1, 2, 4] <=> [1, 2, 10]    #=> -1

# Edge cases:
[1, 2] <=> [1, 2, 10]       #=> -1
[1, 2, 4, 4, 5] <=> [1, 2]  #=> 1
%w[a a c] <=> %w[a b c]     #=> -1
[1, 2] <=> [1, :two]        #=> nil
