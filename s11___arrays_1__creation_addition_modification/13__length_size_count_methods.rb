# The .length, .size and .count Methods on an Array

# .length, .size, .count - return the count of elements in an array

[1, 2, 3, 4, "Hello", true, nil, nil].length #=> 8
[].length #=> 0

[1, 2, 3, 4, "Hello", true, nil, nil].size #=> 8
[].size #=> 0

# .count is more flexible and is more expensive
[1, 2, 3, 4, "Hello", true, nil, nil].count #=> 8
[].count #=> 0

# How many times argument occurs in an array
[1, 2, 3, 4, "Hello", true, nil, nil].count(nil) #=> 2
[1, 2, 3, 2, 5, 2, 6].count(2) #=> 3
[1, 2, 3, 2, 5, 2, 6].count(true) #=> 0
