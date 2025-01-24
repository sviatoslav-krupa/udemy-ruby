# Float Methods

# .to_i
# Just cuts decimal component. The result is Integer
p 10.5.to_i # => 10

# .floor
# Rounds down a float (opposite to .ceil). The result is Integer
p 10.8.floor # => 10
p 10.3.floor # => 10

# .ceil
# Rounds up a float (opposite to .floor). The result is Integer
p 10.8.ceil # => 11
p 10.3.ceil # => 11

# .round
# Rounds a float by mathematical rule. Argument is optional
p 10.8.round # => 11
p 10.3.round # => 10

p 10.8.round # => 11 (.round the same as .round(0))
p 10.8.round(0) # => 11 (argument indicates how many digits should be after the comma)

p 3.14159.round(1) # => 3.1
p 3.14159.round(2) # => 3.14
p 3.14159.round(4) # => 3.1416

# .abs (absolute value)
# Always positive
p 10.8.abs # => 10.8
p -10.3.abs # => 10.8

# For Integer works as well
p 5.abs # => 5
p -5.abs # => 5

# Edge cases
p 5.floor # => 5
p 6.ceil # => 6
p 5.round # => 5
p 5.round(2) # => 5
