# The .sort Method on an Array

# .sort - sorting in ascending order (the smallest value first)
# for descending order use with .reverse (e.g. `<...>.sort.reverse`)

numbers = [5, 13, 1, -2, 8]

numbers.sort # => [-2, 1, 5, 8, 13]
numbers # => [5, 13, 1, -2, 8]

numbers.sort!
numbers # => [-2, 1, 5, 8, 13]

words = %w[caterpillar kangaroo apple zebra]

words.sort # => ["apple", "caterpillar", "kangaroo", "zebra"]
words # => ["caterpillar", "kangaroo", "apple", "zebra"]

words.sort!
words # => ["apple", "caterpillar", "kangaroo", "zebra"]

# descending order
nums = [3, 4, 1, -10, 0, 6]
nums.sort.reverse # => [6, 4, 3, 1, 0, -10]

# Edge cases:
[1, 2.4, 6, 5.7, 10, -3.5].sort # => [-3.5, 1, 2.4, 5.7, 6, 10]
%w[a A z Z c C].sort # => ["A", "C", "Z", "a", "c", "z"]
["qwe", 3, 5, "hello"].sort # => comparison of String with 3 failed (ArgumentError)
[true, false, true, true].sort # => comparison of TrueClass with false failed (ArgumentError)
[false, nil, false].sort # => comparison of FalseClass with nil failed (ArgumentError)
[true, true, nil, true].sort # => comparison of TrueClass with nil failed
[true, true, "qwe", true].sort # => comparison of TrueClass with String failed
[true, 1, "qwe", 3].sort # => comparison of TrueClass with 1 failed
