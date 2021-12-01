# Intro to Object Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477580#overview) is the link to the video.

# Notes:
# * Methods are functionalities
# * Method is a message sent to the object that instructs it to do something, gives some command
# '.' - dot operator

p "Hello, World!".length # => 13 (Integer)
p "Hello, World!".upcase # => "HELLO, WORLD!" (String)
p "Hello, World!".downcase # => "hello, world!" (String)

name = "Sviat"
p name.length # => 5 (Integer)
p name.upcase # => "SVIAT" (String)

p 10.next # => 11 (Integer)
p -1.next # => 0 (Integer)

puts "Hello, World!"
puts "Hello, World!".inspect # The same as p "Hello, World!"
