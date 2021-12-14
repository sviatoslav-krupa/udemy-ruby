# The .size Method on a Range
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481914#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-3.0.0/Range.html#method-i-size)

# .size - returns the number of elements in a range (works only with Numeric)

p (143..769).size # => 627
p (143...769).size # => 626

p ("a"..."z").size # => nil
