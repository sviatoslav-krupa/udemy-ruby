# Notes:
#   * Escaping - by backslash '\' before symbol (mark symbol as a part of the string, '\' will not be printed)

puts "Hello, World!" #=> nil
# OUTPUT:
#   Hello, World!

puts 'Hello, World!' #=> nil
# OUTPUT:
#   Hello, World!

puts "Juliet said 'Goodbye' to Romeo" #=> nil
# OUTPUT:
#   Juliet said 'Goodbye' to Romeo

puts 'Juliet said "Goodbye" to Romeo' #=> nil
# OUTPUT:
#   Juliet said "Goodbye" to Romeo

puts "Juliet said \"Goodbye\" to Romeo" #=> nil
# OUTPUT:
#   Juliet said "Goodbye" to Romeo

puts 'Juliet said \'Goodbye\' to Romeo' #=> nil
# OUTPUT:
#   Juliet said 'Goodbye' to Romeo

result = "Let's add a line break\nright here"
puts result #=> nil
# OUTPUT:
#   Let's add a line break
#   right here

p result #=> "Let's add a line break\nright here"
# OUTPUT:
#   "Let's add a line break\nright here"

# Adding '\'
escaped_result = "Let's add a line break\\nright here"
puts escaped_result #=> nil
# OUTPUT:
#   "Let's add a line break\nright here"

p escaped_result #=> "Let's add a line break\\nright here"
# OUTPUT:
#   "Let's add a line break\\nright here"

# Creating a tab
puts "\tInsert a tab right here"
puts "This is normal"
# OUTPUT:
#     Insert a tab right here
#   This is normal

# Edge cases:
# With single quote \n, \t don't work
puts 'Insert a line break\n right here' #=> nil
# OUTPUT:
#   Insert a line break\n right here

puts '\tInsert a tab right here' #=> nil
# OUTPUT:
#   \tInsert a tab right here

# Ruby technicaly keeps special characters in string; print, puts and p just process it differently
test_string = "\t Hello, World" # (with a tab at the beginning)

print test_string #=> nil
# OUTPUT:
#	    Hello, World

puts test_string #=> nil
# OUTPUT:
#     Hello, World

p test_string #=> nil
# OUTPUT:
#   "\t Hello, World"

