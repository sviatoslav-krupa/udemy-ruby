# Notes:
#   * Single quotes - more literally, raw format
#   * Line breaks do not work in single quotes
#   * String interpolation doesn't work with single quotes

puts "Hello,\nWorld!" #=> nil
# OUTPUT:
#   Hello,
#   World!

puts 'Hello,\nWorld!' #=> nil
# OUTPUT:
#   Hello,\nWorld!

name = "Sviat"
puts "Hi, #{name}" #=> nil
# OUTPUT:
#   Hi, Sviat

puts 'Hi, #{name}' #=> nil
# OUTPUT:
#   Hi, #{name}
