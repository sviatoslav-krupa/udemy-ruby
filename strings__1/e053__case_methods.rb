# Case Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481510#overview) is the link to the video.

# .capitalize - only first letter in a string is capital, others are lowercase
# Returns String
puts "hello".capitalize # => Hello
puts "heLLo".capitalize # => Hello
puts "Hello".capitalize # => Hello
puts "hello World".capitalize # => Hello world
puts "12hello".capitalize # => 12hello

# .upcase - all letters are capital
puts "sviat123".upcase # => SVIAT123
puts "blah blah blah".upcase # => BLAH BLAH BLAH

lowercase = "I'm patient"
uppercase = lowercase.upcase
p uppercase # => "I'M PATIENT"

# .downcase - all letters are lowercase
puts "SVIAT123".upcase # => sviat123
puts "BLAH BLAH BLAH".upcase # => blah blah blah

# .swapcase - swaps cases (a - A, B - b)
puts "SViatoSLav".swapcase # => svIATOslAV
