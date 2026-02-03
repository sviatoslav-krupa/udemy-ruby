# Notes:
#   * PEMDAS - Parentheses, Exponents, (Multiplication, Division), (Addition, Subtraction)
#   * Multiplication operator '*' called asterisk
#   * (1 + 4) called expression
#   * Operator precedence in Ruby - https://www.geeksforgeeks.org/operator-precedence-in-ruby/
#   * If there is a Float object from at least one side - the result is a Float object as well

# Addition
1 + 4     #=> 5 (integer + integer => integer)
1.0 + 4   #=> 5.0 (float + integer => float)
1 + 4.0   #=> 5.0 (integer + float => float)
1.0 + 4.0 #=> 5.0 (float + float => float)
"School" + "bus"  #=> "Schoolbus" (string concatenation)

# Subtraction
10 - 6      #=> 4 (integer - integer => integer)
10.0 - 6    #=> 4.0 (float - integer => float)
10 - 6.0    #=> 4.0 (integer - float => float)
10.0 - 6.0  #=> 4.0 (float - float => float)

# Multiplication
3 * 4     #=> 12 (integer * integer => integer)
3.0 * 4   #=> 12.0 (float * integer => float)
3 * 4.0   #=> 12.0 (integer * float => float)
3.0 * 4.0 #=> 12.0 (float * float => float)

# Division
10 / 5      #=> 2
12 / 5      #=> 2 (integer / integer => integer)
12.0 / 5    #=> 2.4 (float / integer => float)
12 / 5.0    #=> 2.4 (integer / float => float)
12.0 / 5.0  #=> 2.4 (float / float => float)

# Exponents
2 ** 4    #=> 16
2 ** 4.0  #=> 16.0
3 ** 2    #=> 9

# Modulo operator (returns remainder of division)
5 % 2   #=> 1
5 % 2.0 #=> 1.0
14 % 4  #=> 2
6 % 2   #=> 0

# Edge cases:
4 + "qwe" #=> String can't be coerced into Integer (TypeError)
3 * 4.    #=> syntax error found (SyntaxError)
.5 / 2    #=> syntax error found (SyntaxError)
