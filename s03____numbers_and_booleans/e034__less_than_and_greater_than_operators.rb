# Less than (<) and Greater than (>) Operators
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477660#overview) is the link to the video.

# Less than (<)
p 1 < 8 # => true
p 10 < 15 # => true
p 12 < 5 # => false
p 2 < 2.1 # => true

# Less than or equal (<=)
p 1 <= 5 # => true
p 1 <= 1 # => true
p 5 <= 10 # => false

# Greater than (>)
p 5 > 1 # => true
p 3 > 0 # => true
p 5 > 10 # => false
p 6.1 > 6 # => true

# Greater than or equal (>=)
p 10 >= 8 # => true
p 10 >= 10 # => true
p 3 >= 7 # => false

# Edge cases

# Here Integer, Float and String include Comparable module, so we can make a comparison even if the result is error
p 12 > "qwe" # => comparison of Float with String failed (ArgumentError)
p "qwe" > 12 # => comparison of String with 12 failed (ArgumentError)
p 6.1 < nil # => comparison of Float with nil failed (ArgumentError)

# nil doesn't include Comparable module, so we can't compare nil with anything
p nil < 6.1 # => undefined method `<' for nil:NilClass (NoMethodError)
