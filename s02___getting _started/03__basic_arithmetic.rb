# Basic arithmetic

# PEMDAS
# Parentheses, Exponents, Multiplication, Division, Addition, Subtraction
# Operator precedence in Ruby (https://www.geeksforgeeks.org/operator-precedence-in-ruby/)

# Addition
p 1 + 4 # => 5
p "School" + "bus" # => "Schoolbus" (string concatenation)

# Subtraction
p 10 - 6 # => 4

# Multiplication
p 3 * 4 # => 12

# Division
p 10 / 5 # => 2
p 12 / 5 # => 2 (integer / integer => integer)
p 12.0 / 5 # => 2.4 (float / integer => float)
p 12 / 5.0 # => 2.4 (integer / float => float)
p 12.0 / 5.0 # => 2.4 (float / float => float)

# Exponents (to the power of <number>)
p 2 ** 4 # => 16
p 3 ** 2 # => 9

# Modulo operator (return remainder of division)
p 5 % 2 # => 1
p 14 % 4 # => 2
p 6 % 2 # => 0

# Notes
p 1 + 4 # (1 + 4) called expression
# Multiplication operator '*' called asterisk

# Edge cases
p 4 + "qwe" # => String can't be coerced into Integer (TypeError)
p .5 / 2 # => syntax error found (SyntaxError)
