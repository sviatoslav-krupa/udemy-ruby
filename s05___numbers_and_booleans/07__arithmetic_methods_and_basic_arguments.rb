# Arithmetic Methods and Basic Arguments

# These examples are the same but first is preferable if we don't pass any arguments into a method (values inside parentheses)
p 1.next # => 2
p 1.next() # => 2

# Arithmetic operators are methods that we can call with dot "." operator

p 1 + 2 # => 3
p 1.+( 2) # => 3
p 1.+ 2 # => 3 (parentheses are not required)

p 10 - 5 # => 5
p 10.-( 5) # => 5
p 10.- 5 # => 5 (parentheses are not required)

p 3 * 4 # => 12
p 3.*(4) # => 12
p 3.* 4 # => 12 (parentheses are not required)

p 10 / 5 # => 2
p 10./(5) # => 2
p 10./ 5 # => 2 (parentheses are not required)
p 10.div(5) # => 2 (we can use .div method)
p 10.div 5 # => 2 (parentheses are not required as well)

p 10 % 3 # => 1
p 10.%(3) # => 1
p 10.% 3 # => 1 (parentheses are not required)
p 10.modulo(3) # => 1 (we can use .modulo method)
p 10.modulo 3 # => 1 (parentheses are not required as well)

# Edge cases

p 2.+() # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 2.+ # => wrong number of arguments (given 0, expected 1) (ArgumentError)

p 3.-() # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 3.- # => wrong number of arguments (given 0, expected 1) (ArgumentError)

p 5.*() # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 5.* # => wrong number of arguments (given 0, expected 1) (ArgumentError)

p 1./() # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 1./ # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 1.div() # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 1.div # => wrong number of arguments (given 0, expected 1) (ArgumentError)

p 6.%() # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 6.% # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 6.modulo() # => wrong number of arguments (given 0, expected 1) (ArgumentError)
p 6.modulo # => wrong number of arguments (given 0, expected 1) (ArgumentError)
