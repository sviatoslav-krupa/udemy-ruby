# Single Quotes vs Double Quotes
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481480#overview) is the link to the video.

# Line breaks do not work in single quotes (things more literally)
puts "Hello,\nWorld!"
=begin
Hello,
World!
=end

puts 'Hello,\nWorld!'
# Hello,\nWorld!

# String interpolation doesnt work with single quotes
name = "Sviat"
puts "Hi, #{name}" # => Hi, Sviat
puts 'Hi, #{name}' # => Hi, #{name}
