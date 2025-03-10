# Escape Characters

puts "Hello, World!" # => Hello, World!
puts 'Hello, World!' # => Hello, World!

puts "Juliet said 'Goodbye' to Romeo" # => Juliet said 'Goodbye' to Romeo
puts 'Juliet said "Goodbye" to Romeo' # => Juliet said "Goodbye" to Romeo

# Escaping - by backslash '\' before symbol (mark symbol as a part of the string, '\' will not be printed)
puts "Juliet said \"Goodbye\" to Romeo" # => Juliet said "Goodbye" to Romeo
puts 'Juliet said \'Goodbye\' to Romeo' # => Juliet said 'Goodbye' to Romeo

result = "Let's add a line break\nright here"
puts result
=begin
Let's add a line break
right here
=end
p result # => "Let's add a line break\nright here"

# Escaping (adding '\')
escaped_result = "Let's add a line break\\nright here"
puts escaped_result # => "Let's add a line break\nright here"
p escaped_result # => "Let's add a line break\\nright here"

# Creating a tab
puts "\tInsert a tab right here"
puts "This is normal"
=begin
        Insert a tab right here
This is normal
=end

# Edge cases:
# With single quote \n, \t don't work
puts 'Insert a line break\n right here'
puts '\tInsert a tab right here'
