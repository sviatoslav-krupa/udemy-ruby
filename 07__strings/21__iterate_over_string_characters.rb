# Notes:
#   * .each_char == .split("").each {...} == .chars.each {...}

"Hello, World!".each_char { |char| p char }
# OUTPUT:
#   "H"
#   "e"
#   "l"
#   "l"
#   "o"
#   ","
#   " "
#   "W"
#   "o"
#   "r"
#   "l"
#   "d"
#   "!"

"Sviat".split("") #=> ["S", "v", "i", "a", "t"]
"Sviat".split("").each { |char| p char }
# OUTPUT:
#   "S"
#   "v"
#   "i"
#   "a"
#   "t"


"Sviat".chars #=> ["S", "v", "i", "a", "t"]
"Sviat".chars.each { |char| p char }
# OUTPUT:
#   "S"
#   "v"
#   "i"
#   "a"
#   "t"
