# Notes:
#   * .capitalize - only first letter in a string is capital, others are lowercase
#   * .upcase - all letters are capital
#   * .downcase - all letters are lowercase
#   * .swapcase - swaps cases (a - A, B - b)
#   * All methods return String object

# .capitalize
"hello".capitalize       #=> Hello
"heLLo".capitalize       #=> Hello
"Hello".capitalize       #=> Hello
"hello World".capitalize #=> Hello world
"12hello".capitalize     #=> 12hello

# .upcase
"sviat123".upcase       #=> SVIAT123
"blah blah blah".upcase #=> BLAH BLAH BLAH
lowercase = "I'm patient"
uppercase = lowercase.upcase
uppercase #=> "I'M PATIENT"

# .downcase
"SVIAT123".upcase       #=> sviat123
"BLAH BLAH BLAH".upcase #=> blah blah blah

# .swapcase
"SViatoSLav".swapcase #=> svIATOslAV
