# The .include? Predicate Method on an Array

"hello".include?("h") #=> true
"hello".include?("H") #=> false

[1, 2, 3, 4, 5].include?(2) #=> true
[1, 2, 3, 4, 5].include?(6) #=> false

# Edge cases
[1, 2, 3, [4], 5].include?(4) #=> false
[1, 2, 3, [4], 5].include?([4]) #=> true

%w[apple banana orange].include?("apple") #=> true
%w[apple banana orange].include?("Apple") #=> false

[1, 2, 3, 4, 5].include?(1, 2) #=> wrong number of arguments (given 2, expected 1) (ArgumentError)
