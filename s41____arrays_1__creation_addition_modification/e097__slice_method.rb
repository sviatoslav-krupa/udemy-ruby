# The .slice Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482130#overview) is the link to the video.

# .slice is identical to Brackets syntax

numbers = [0, 2, 4, 8, 10, 12, 14]

numbers.slice(3) # => 8
numbers.slice(100) # => nil
numbers.slice(3, 2) # => [8, 10]
numbers.slice(3, 100) # => [8, 10, 12, 14]
numbers.slice(1..4) # => [2, 4, 8, 10]
numbers.slice(1..100) # => [2, 4, 8, 10, 12, 14]
numbers.slice(1...4) # => [2, 4, 8]
