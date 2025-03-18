# Notes:
#   * Returns one dimensional array (by default)
#   * The optional level argument determines the level of recursion to flatten
#   * .flatten! - modifies existing array

# Docs:
#   * https://ruby-doc.org/core-2.4.0/Array.html#method-i-flatten

[[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10].flatten #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[1, 2, [3, [4, 5]]].flatten(1)          #=> [1, 2, 3, [4, 5]]
[1, 2, [3, [4, 5]]].flatten(2)          #=> [1, 2, 3, 4, 5]
