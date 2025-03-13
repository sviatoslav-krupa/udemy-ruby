# Notes:
#   * String - collection of characters, can include letters, numbers, symbols, spaces
#   * We can create string with '', "", String.new, .to_s
#   * We can use .new method for creating an object, just pass string that we want to make

# Docs:
#   * https://ruby-doc.org/core-2.3.3/String.html

puts "Hi there, I am a string" #=> nil
# OUTPUT:
#   Hi there, I am a string

puts "I can also include numbers and symbols: # $ 5 ! _ -" #=> nil
# OUTPUT:
#   I can also include numbers and symbols: # $ 5 ! _ -

name = "Sviat"
revenue = "$23 dollars"
puts name, revenue #=> nil
# OUTPUT:
#   Sviat
#   $23 dollars

space = " " # valid string
space         #=> " "
space.length  #=> 1

empty = "" # Empty string
empty         #=> ""
empty.length  #=> 0

name.class  #=> String
empty.class #=> String
space.class #=> String

# .new method
another_name = String.new("Andrii")
another_name #=> "Andrii"

5.to_s        #=> "5"
5.to_s.class  #=> String
