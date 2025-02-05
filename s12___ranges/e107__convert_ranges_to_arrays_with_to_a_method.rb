# Convert Ranges to Arrays with the .to_a Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482158#overview) is the link to the video.

letters_range = "A".."T"
p letters_range # => "A".."T"
p letters_range.class # => Range
p letters_range[0] # => undefined method `[]' for "A".."T":Range (NoMethodError)

letters_array = letters_range.to_a
p letters_array # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"]
p letters_array.class # => Array
p letters_array[0] # => "A"

numbers_range = 1..10
p numbers_range # => 1..10
p numbers_range.class # => Range
p numbers_range[2] # => undefined method `[]' for 1..10:Range (NoMethodError)

numbers_array = numbers_range.to_a
p numbers_array # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers_array.class # => Array
p numbers_array[2] # => 3

# Edge cases
p 1...10.to_a # => undefined method `to_a' for 10:Integer (NoMethodError)
p (3.14..10).to_a # => can't iterate from Float (TypeError)
p (3.14..10.1).to_a # => can't iterate from Float (TypeError)
p (true...false).to_a # => can't iterate from TrueClass (TypeError)
