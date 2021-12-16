# The .length, .size and .count Methods on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482136#overview) is the link to the video.

# .length, .size, .count - return the count of elements in an array

p [1, 2, 3, 4, "Hello", true, nil, nil].length # => 8
p [].length # => 0

p [1, 2, 3, 4, "Hello", true, nil, nil].size # => 8
p [].size # => 0

# .count is more flexible and is more expensive
p [1, 2, 3, 4, "Hello", true, nil, nil].count # => 8
p [].count # => 0

# How many times argument occurs in an array
p [1, 2, 3, 4, "Hello", true, nil, nil].count(nil) # => 2
p [1, 2, 3, 2, 5, 2, 6].count(2) # => 3
p [1, 2, 3, 2, 5, 2, 6].count(true) # => 0
