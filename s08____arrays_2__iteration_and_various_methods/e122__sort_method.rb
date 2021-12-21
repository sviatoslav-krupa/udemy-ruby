# The .sort Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482350#overview) is the link to the video.

# .sort - sorting in ascending order (the smallest value first)
# for descending order use with .reverse (e.g. `<...>.sort.reverse`)

numbers = [5, 13, 1, -2, 8]
p numbers.sort # => [-2, 1, 5, 8, 13]
p numbers # => [5, 13, 1, -2, 8]
numbers.sort!
p numbers # => [-2, 1, 5, 8, 13]

words = %w[caterpillar kangaroo apple zebra]
p words.sort # => ["apple", "caterpillar", "kangaroo", "zebra"]
p words # => ["caterpillar", "kangaroo", "apple", "zebra"]
words.sort!
p words # => ["apple", "caterpillar", "kangaroo", "zebra"]

# descending order
nums = [3, 4, 1, -10, 0, 6]
p nums.sort.reverse # => [6, 4, 3, 1, 0, -10]

# Edge cases
p [1, 2.4, 6, 5.7, 10, -3.5].sort # => [-3.5, 1, 2.4, 5.7, 6, 10]
p %w[a A z Z c C].sort # => ["A", "C", "Z", "a", "c", "z"]
p ["qwe", 3, 5, "hello"].sort # => comparison of String with 3 failed (ArgumentError)
p [true, false, true, true].sort # => comparison of TrueClass with false failed (ArgumentError)
p [false, nil, false].sort # => comparison of FalseClass with nil failed (ArgumentError)
p [true, true, nil, true].sort # => comparison of TrueClass with nil failed
p [true, true, "qwe", true].sort # => comparison of TrueClass with String failed
p [true, 1, "qwe", 3].sort # => comparison of TrueClass with 1 failed
