# The .include? Predicate Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482356#overview) is the link to the video.

p "hello".include?("h") # => true
p "hello".include?("H") # => false

p [1, 2, 3, 4, 5].include?(2) # => true
p [1, 2, 3, 4, 5].include?(6) # => false

# Edge case
p [1, 2, 3, [4], 5].include?(4) # => false
p [1, 2, 3, [4], 5].include?([4]) # => true

p %w[apple banana orange].include?("apple") # => true
p %w[apple banana orange].include?("Apple") # => false
