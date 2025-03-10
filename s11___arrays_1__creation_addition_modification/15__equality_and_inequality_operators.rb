# Equality and Inequality Operators with Arrays

# Equality check: the same length, the same items, the same order of items.

a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b # => false
p a == c # => false
p a == d # => true

p a != b # => true
p a != c # => true
p a != d # => false

a = %w[Skittles Starburst Snickers]
b = %w[Skittles Starburst snickers]

p a == b # => false
p a != b # => true

# Edge cases:
p [1, 2] == [1, nil, 2] # => false
p [1, 2] == [1, 2, nil] # => false
