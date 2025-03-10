# Notes:
#   * PEMDAS - Parentheses, Exponents, Multiplication, Division, Addition, Subtraction
#   * Multiplication operator '*' called asterisk
#   * (1 + 4) called expression
#   * Operator precedence in Ruby - https://www.geeksforgeeks.org/operator-precedence-in-ruby/

# Addition
1 + 4             #=> 5
"School" + "bus"  #=> "Schoolbus" (string concatenation)

# Subtraction
10 - 6 #=> 4

# Multiplication
3 * 4 #=> 12

# Division
10 / 5      #=> 2
12 / 5      #=> 2 (integer / integer => integer)
12.0 / 5    #=> 2.4 (float / integer => float)
12 / 5.0    #=> 2.4 (integer / float => float)
12.0 / 5.0  #=> 2.4 (float / float => float)

# Exponents (to the power of <number>)
2 ** 4 #=> 16
3 ** 2 #=> 9

# Modulo operator (return remainder of division)
5 % 2   #=> 1
14 % 4  #=> 2
6 % 2   #=> 0

# Edge cases:
4 + "qwe" #=> String can't be coerced into Integer (TypeError)
.5 / 2    #=> syntax error found (SyntaxError)
