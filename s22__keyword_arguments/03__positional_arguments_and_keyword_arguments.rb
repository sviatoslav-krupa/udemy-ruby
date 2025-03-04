def sum(a, b: 1) # :a - positional argument, :b - keyword argument
  a + b
end

sum(3, b: 5) #=> 8
sum(4) #=> 5

sum(4, 9) #=> wrong number of arguments (given 2, expected 1) (ArgumentError) (keyword argument wasn't provided)
sum(b: 5, 3) #=> syntax errors found (SyntaxError) (positional argument must go first)

# Edge case: positional arguments must go first, then keyword arguments.
def sum(b: 1, a); end #=> syntax error found (SyntaxError)
