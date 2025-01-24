# The .reverse Method on a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481518#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.4.0/String.html#method-i-reverse)

# .reverse - reverses a string (read a string from back to front)
# Returns String
puts "Ruby".reverse # => ybuR
puts "123".reverse # => 321
puts "!@-".reverse # => -@!

# Methods chaining
puts "ruby is fun".upcase.reverse.downcase # => nuf si ybur
