# Comparison with the Equality (==) Operator

# Checks if 2 values are identical or equal
p 10 == 10 # => true
p 10 == 20 # => false
p 10 == "10" # => false
p 10 == 10.0 # => true (even here are Integer and Float)
p 10 == 10.1 # => false
p true == "true" # => false
p false == "false" # => false

a = 10
b = 5
c = 10

p a == c # => true
p a == b # => false
p b == c # => false

# Placement are irrelevant
p a == c # => true
p c == a # => true
p a == b # => false
p b == a # => false


# Comparison with the Inequality (!=) Operator

# Checks if 2 values are different (reverse to ==)
p 10 != 10 # => false
p 10 != 20 # => true
p 10 != "10" # => true
p 10 != 10.0 # => false (even here are Integer and Float)
p 10 != 10.1 # => true
p "Hello" != "Goodbye" # => true
p "Hello" != "Hello" # => false
p "Hello" != "hello" # => true (case sensitivity matters)
p "Hello".downcase != "hello".downcase # => false
