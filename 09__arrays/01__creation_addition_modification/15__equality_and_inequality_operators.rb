# Notes:
#   * Equality check: the same length, the same items, the same order of items

a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

a == b #=> false
a == c #=> false
a == d #=> true

a != b #=> true
a != c #=> true
a != d #=> false

a = %w[Skittles Starburst Snickers]
b = %w[Skittles Starburst snickers]

a == b #=> false
a != b #=> true

# Edge cases:
[1, 2] == [1, nil, 2] #=> false
[1, 2] == [1, 2, nil] #=> false
