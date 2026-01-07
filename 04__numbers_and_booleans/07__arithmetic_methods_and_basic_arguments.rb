# Notes:
#   * Arithmetic operators are methods that we can call with dot "." operator

# These examples are the same but first is preferable if we don't pass any arguments into a method
1.next    #=> 2
1.next()  #=> 2

1 + 2   #=> 3
1.+( 2) #=> 3
1.+ 2   #=> 3 (parentheses are not required)

10 - 5    #=> 5
10.-(5)  #=> 5
10.- 5    #=> 5 (parentheses are not required)

3 * 4   #=> 12
3.*(4)  #=> 12
3.* 4   #=> 12 (parentheses are not required)

10 / 5    #=> 2
10./(5)   #=> 2
10./ 5    #=> 2 (parentheses are not required)
10.div(5) #=> 2 (we can use .div method)
10.div 5  #=> 2 (parentheses are not required as well)

10 % 3        #=> 1
10.%(3)       #=> 1
10.% 3        #=> 1 (parentheses are not required)
10.modulo(3)  #=> 1 (we can use .modulo method)
10.modulo 3   #=> 1 (parentheses are not required as well)

# Edge cases:

2.+() #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
2.+   #=> wrong number of arguments (given 0, expected 1) (ArgumentError)

3.-() #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
3.-   #=> wrong number of arguments (given 0, expected 1) (ArgumentError)

5.*() #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
5.*   #=> wrong number of arguments (given 0, expected 1) (ArgumentError)

1./()   #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
1./     #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
1.div() #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
1.div   #=> wrong number of arguments (given 0, expected 1) (ArgumentError)

6.%()       #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
6.%         #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
6.modulo()  #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
6.modulo    #=> wrong number of arguments (given 0, expected 1) (ArgumentError)
