# Overwrite Characters in String with Bracket Syntax

thing = "rocket ship"
p thing # => "rocket ship"

# Overwriting single character
thing[0] = "p"
p thing # => "pocket ship"

thing[1] = "a"
p thing # => "packet ship"

thing[9] = "o"
p thing # => "packet shop"

thing[-100] = "test" # => index -100 out of string (IndexError)

# Overwriting multiple characters
fact = "I love blueberry pie"
p fact # => "I love blueberry pie"

fact[7, 4] = "rasp"
fact[7..10] = "rasp"
fact[7...11] = "rasp"
# fact.slice(7...11) = "rasp" (syntax error, unexpected '=', expecting end-of-input (SyntaxError) fact.slice(7, 4) = "rasp")
p fact # => "I love raspberry pie"

fact[2..5] = "absolutely adore"
p fact # => "I absolutely adore raspberry pie"

# Edge cases:
fact[7, -4] = "rasp" # => negative length -4 (IndexError)
fact[7..100] = "rasp" # => "I love rasp"
fact[7..-50] = "rasp" # => "I love raspblueberry pie"
fact[-70..3] = "rasp" # => -70..3 out of range (RangeError)
