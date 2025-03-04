# Notes
#   .gets - (get String) collects input from a user, output value is always String
#   .chomp - remove new line character at the end of the string

name = gets # enter Sviat

p name #=> "Sviat\n" ('\n' - Enter key, line break)
# OUTPUT:
#   "Sviat\n"

puts "Thank you, #{name}. See you later!"
# OUTPUT:
#   Thank you, Sviat
#   . See you later!

name = gets.chomp # enter Sviat; method chaining: .gets returns String, call .chomp on returned String

p name #=> "Sviat"
# OUTPUT:
#   "Sviat"

puts "Thank you, #{name}. See you later!"
# OUTPUT:
#   Thank you, Sviat. See you later!
