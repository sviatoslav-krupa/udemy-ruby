# Access Sequential Array Elements with a Range Object
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482126#overview) is the link to the video.

numbers = [1, 3, 5 ,7 ,9 ,15, 21, 18, 6]

# Get elements starting from 3rd index till 6th index inclusively
p numbers[3..6] # => [7, 9, 15, 21]

# Get elements starting from 3rd index till 6th index exclusively
p numbers[3...6] # => [7, 9, 15]

# Edge cases
p numbers[3..3] # => [7]
p numbers[3...3] # => [] (not [nil])
p numbers[3...100] # => [7, 9, 15, 21, 18, 6] (just cut array at the end)
