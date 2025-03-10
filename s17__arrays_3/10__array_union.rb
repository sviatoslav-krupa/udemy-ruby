# Union - Combine Arrays and Exclude Duplicates

# `|` (union) - combine multiple arrays into one and removes duplicates

[1, 2, 3] | [3, 4, 5] #=> [1, 2, 3, 4, 5]
[1, 2, 3].|([3, 4, 5]) #=> [1, 2, 3, 4, 5]
([1, 2, 3] + [3, 4, 5]).uniq #=> [1, 2, 3, 4, 5]

# Edge cases
[1, 2, 3] | [3, 4, 5] | [4, 5, 6, 7] #=> [1, 2, 3, 4, 5, 6, 7] (with multiple arrays)
[1, [2, 3]] | [[2, 3], 4, 5] # => [1, [2, 3], 4, 5]
[1, [2, 3]] | [[2, 3, 4], 5] # => [1, [2, 3], [2, 3, 4], 5]
