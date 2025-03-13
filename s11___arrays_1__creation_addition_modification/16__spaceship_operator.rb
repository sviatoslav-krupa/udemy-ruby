# The Spaceship Operator `<=>`

# Documentation for arrays (https://ruby-doc.org/core-2.7.0/Array.html#method-i-3C-3D-3E)
# More explanation (https://stackoverflow.com/questions/827649/what-is-the-ruby-spaceship-operator)

=begin
Explanation:

-1  0   1
<   =   >

nil - not comparable

a <=> b :=
  if a < b then return -1
  if a = b then return  0
  if a > b then return  1
  if a and b are not comparable then return nil
=end

# For arrays each object in each array is compared (using the <=> operator).
#

p 2 <=> 5 #=> -1
p 5 <=> 5 #=> 0
p 10 <=> 5 #=> 1
p "qwe" <=> true #=> nil

p [3, 4, 5] <=> [3, 4, 5] #=> 0
p [3, 4, 5] <=> ["qwe", 4, 5] #=> nil (3 and "qwe" are not comparable)
p [1, 2, 4] <=> [1, 2, 10] #=> -1

# Edge cases:
p [1, 2] <=> [1, 2, 10] #=> -1
p [1, 2, 4, 4, 5] <=> [1, 2] #=> 1
p %w[a a c] <=> %w[a b c] #=> -1
p [1, 2] <=> [1, :two] #=> nil
