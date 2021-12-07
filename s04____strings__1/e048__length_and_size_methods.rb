# The .length and .size Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481490#overview) is the link to the video.

# Documentation
# * .length - https://ruby-doc.org/core-2.5.0/String.html#method-i-length
# * .size - https://ruby-doc.org/core-2.5.0/String.html#method-i-size

# .length and .size are identical

a = "Hello, World!"
b = "Hi, my name is Sviat!"
c = " "
d = ""

p a.length # => 13
p a.size # => 13

p b.length # => 21
p b.size # => 21

p c.length # => 1
p c.size # => 1

p d.length # => 0
p d.size # => 0

p a.length.class # => Integer
p a.length.next # => 14
p a.length.odd? # => true
p a.length.odd?.class # => TrueClass
