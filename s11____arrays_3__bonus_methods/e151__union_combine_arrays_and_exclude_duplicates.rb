# Union - Combine Arrays and Exclude Duplicates
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482428#overview) is the link to the video.

# `|` (union) - combine multiple arrays into ine and removes duplicates

[1, 2, 3] | [3, 4, 5] #=> [1, 2, 3, 4, 5]
[1, 2, 3].|([3, 4, 5]) #=> [1, 2, 3, 4, 5]
([1, 2, 3] + [3, 4, 5]).uniq #=> [1, 2, 3, 4, 5]

# Edge case
[1, 2, 3] | [3, 4, 5] | [4, 5, 6, 7] #=> [1, 2, 3, 4, 5, 6, 7] (with multiple arrays)
