# Intro to Ranges
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481772#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.3.3/Range.html)

# Range (interval) - a set of values with a beginning and an end.
# s..e include the end value.
# s...e exclude the end value.

nums = 1..5

p nums # => 1..5
puts nums # => 1..5
print nums # => 1..5

p nums.class # => Range

# .first
p nums.first # => 1 (Integer)
p nums.first(3) # => [1, 2, 3] (Array)

# .last
p nums.last # => 5 (Integer)
p nums.last(2) # => [4, 5] (Array)
p (1...5).last # => 5 (even if 5 is excluded)
p (1...5).last(1) # => [4] (Array)
p (1...5).last(3) # => [2, ,3 ,4] (without excluded value if use argument)

# Edge cases
p 1..5.first # => undefined method `first' for 5:Integer (NoMethodError)
p (1..5).first # => 1
p (1..5).first(100) # => [1, 2, 3, 4, 5] (no errors, returns all values)

p 1.2..9.6 # => 1.2...9.6
p (1.2..9.6).first # => 1.2
p (1.2..9.6).first(1) # => can't iterate from Float (TypeError)
p (1.2..9.6).last # => 9.6
p (1.2..9.6).last(1) # => can't iterate from Float (TypeError)
