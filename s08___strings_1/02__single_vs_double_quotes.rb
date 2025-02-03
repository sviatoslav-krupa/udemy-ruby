# Single Quotes vs Double Quotes

# Single quotes - more literally, raw format

# Line breaks do not work in single quotes
puts "Hello,\nWorld!"
=begin
Hello,
World!
=end

puts 'Hello,\nWorld!'
# Hello,\nWorld!

# String interpolation doesn't work with single quotes
name = "Sviat"
puts "Hi, #{name}" # => Hi, Sviat
puts 'Hi, #{name}' # => Hi, #{name}
