# The .flatten Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482420#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.4.0/Array.html#method-i-flatten)
# Returns one dimensional array (by default)
# The optional level argument determines the level of recursion to flatten (from the deepest array, bottom -> up)
# .flatten! - modifies existing array

[[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10].flatten #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[1, 2, [3, [4, 5]]].flatten(1) #=> [1, 2, 3, [4, 5]]
[1, 2, [3, [4, 5]]].flatten(2) #=> [1, 2, 3, 4, 5]
