# Create a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481472#overview) is the link to the video.
# String documentation (https://ruby-doc.org/core-2.3.3/String.html)

# String - collection of characters. cn include letters, numbers, symbols, spaces.
# We can create string with '', "", String.new, .to_s

puts "Hi there, I am a string"
puts "I can also include numbers and symbols: # $ 5 ! _ -"

name = "Sviat"
revenue = "$23 dollars"
puts name, revenue

space = " " # => Valid string
p space # => " "
p space.length # => 1

empty = "" # Empty string
p empty # => ""
p empty.length # => 0

p name.class # => String
p empty.class # => String
p space.class # => String

# We can use .new method for creating an object. Pass string that we want to make
another_name = String.new("Andrii")
p another_name # => "Andrii"

p 5.to_s # => "5"
p 5.to_s.class # => String
