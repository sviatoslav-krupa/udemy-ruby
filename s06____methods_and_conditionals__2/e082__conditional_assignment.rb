# Conditional Assignment
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481766#overview) is the link to the video.

y = nil
p y # => nil

# Set y to 5 if y is nil
y ||= 5
p y # => 5

y ||= 10 # y is not nil
p y # => 5

greeting = "Hello"
extraction = 0
letter = greeting[extraction]
p letter # => "H"

extraction = 100
letter = greeting[extraction]
p letter # => nil

letter ||= "Not found"
p letter # => "Not found"
