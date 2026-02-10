# Notes:
#   * .puts and .print return nil, .p returns passed value

# PUTS - Ruby automatically adds line break at the end of the output
puts "Hello, World!" #=> nil
# OUTPUT:
#   Hello, World!

puts "I'm alive and well!" #=> nil
# OUTPUT:
#   I'm alive and well!

puts "I bought 5 dollars at the store." #=> nil
# OUTPUT:
#   I bought 5 dollars at the store.

puts "Hi there, this is a
big line break" #=> nil
# OUTPUT:
#   Hi there, this is a
#   big line break

puts 5 #=> nil
# OUTPUT:
#   5

puts 3.14159 #=> nil
# OUTPUT:
#   3.14159

puts 3 + 4 #=> nil
# OUTPUT:
#   7

# PRINT - the same as puts but doesn't create line break at the end
print "hello" #=> nil
print "world" #=> nil
print "blah blah blah" #=> nil
# OUTPUT:
#   helloworldblah blah blah

# P - more literal output with additional details, it adds line break at the end; the same as `puts <something>.inspect`
p "Steven Seagal" #=> "Steven Seagal"
# OUTPUT:
#   "Steven Seagal"

p "Hi there, this is a
big line break" #=> "Hi there, this is a\nbig line break"
# OUTPUT:
#   "Hi there, this is a\nbig line break"

p "Hello, World!" #=> "Hello, World!"
# OUTPUT:
#   "Hello, World!"

puts "Hello, World!".inspect #=> nil
# OUTPUT:
#   "Hello, World!"

# Edge cases:
puts "3" + 4 #=> `+': no implicit conversion of Integer into String (TypeError)
puts 3 + "4" #=> `+': String can't be coerced into Integer (TypeError)

puts "3" + "4"  #=> nil (string concatenation)
# OUTPUT:
#   34

puts
# OUTPUT: (outputs nothing and adds line break):
#

# It is a valid Ruby code, ';' is a terminator
puts "Hello, World!"; puts "I'm alive and well!"
# OUTPUT:
#   Hello, World!
#   I'm alive and well!

# We can pass multiple variables by comma in p, puts and print methods
puts 3, 4, 5
# OUTPUT:
#   3
#   4
#   5

puts(3, 4, 5)
# OUTPUT:
#   3
#   4
#   5

# `print`, `puts`, `p` are called on `self` implicitly (everything is an object in Ruby): `puts "test"` == `self.puts "test"`
self.puts "test" #=> nil
# OUTPUT:
#   test

self       #=> main (for global scope)
self.class #=> Object
