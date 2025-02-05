# Access Sequential Array Elements with a Range Object

# Notes:
# * Works the same as for String.

numbers = [1, 3, 5 ,7 ,9 ,15, 21, 18, 6]

# Get elements starting from 3rd index till 6th index inclusively
p numbers[3..6] # => [7, 9, 15, 21]

# Get elements starting from 3rd index till 6th index exclusively
p numbers[3...6] # => [7, 9, 15]

# Edge cases
p numbers[3..3] # => [7]
p numbers[3...3] # => [] (not [nil])
p numbers[3...100] # => [7, 9, 15, 21, 18, 6] (just cut array at the end)
