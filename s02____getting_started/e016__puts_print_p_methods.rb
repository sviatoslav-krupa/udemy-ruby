# puts, print and p methods


# PUTS
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477564?start=15#overview) is the link to the video.
# Ruby automatically adds line break at the end of the output.
puts "Hello, World!"
puts "I'm alive and well!"
puts "I bought 5 dollars at the store."
puts "I made $65 dollars pr a profit of 25%."
puts "Hi there, this is a
big line break"
puts 5
puts 3.14159
puts 3 + 4 # => 7
puts "3" + 4 # => "`+': no implicit conversion of Integer into String (TypeError)"
puts 3 + "4" # => "`+': no implicit conversion of Integer into String (TypeError)"
puts "3" + "4" # => "34" (string concatenation)
puts # Outputs nothing and adds line break


# PRINT
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477566#overview) is the link to the video.
# The same as puts but doesn't create line break at the end.
print "hello"
print "world"
print "blah blah blah"
# => helloworldblah blah blah


# P
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477568#overview) is the link to the video.
# More literal output with additional details, it adds line break at the end.
# The same as `puts <something>.inspect`
p "Steven Seagal" # => "Steven Seagal"
p "Hi there, this is a
big line break"
# => "Hi there, this is a\nbig line break"
p "Hello, World!"
puts "Hello, World!".inspect


# Notes
# It is a valid Ruby code, ';' is a terminator
puts "Hello, World!"; puts "I'm alive and well!"

# \n - symbol for line break
