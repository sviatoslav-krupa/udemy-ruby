# Extract Sequential Array Elements with Bracket Syntax
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482124#overview) is the link to the video.

numbers = [1, 3, 5, 7, 9, 15, 21]

# Get 4 elements starting from index position 2
p numbers[2, 4] # => [5, 7, 9, 15]
p numbers[1, 3] # => [3, 5, 7]

p numbers[0] # => 1
p numbers[0].class # => Integer
p numbers[0, 1] # => [1]
p numbers[0, 1].class # => Array

# Edge cases
p numbers[4, 100] # => [9, 15, 21] (just cut array at the end)
