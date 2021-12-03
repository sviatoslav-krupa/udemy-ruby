# Intro to Object Methods with Parameters (The .between? Predicate Method)
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477664#overview) is the link to the video.

p 20.between?(10, 30) # => true
p 20.between? 10, 30 # => true (parentheses are not required)
p 5.between?(10, 30) # => false
p 1.2.between?(1.1, 1.5) # => true
p 1.7.between?(1.1, 1.5) # => false

# Edge cases

# .between includes :min and :max values
p 1.between?(1, 10) # => true
p 10.between?(1, 10) # => true

p 2.between?(1, false) # => comparison of Integer with false failed (ArgumentError)
p 2.between?("qwe", true) # => comparison of Integer with String failed (ArgumentError)
