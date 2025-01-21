# Intro to Numbers and the .class Method

# Notes:
# * Class hierarchy: Numeric -> Integer, Float.
# * Class is a blueprint.

# * Starting with Ruby 2.4, Fixnum and Bignum are unified into Integer.
# * Starting with Ruby 2.4, usage of Fixnum and Bignum constants is deprecated.
Fixnum # =>  uninitialized constant Fixnum (NameError)
Bignum # =>  uninitialized constant Fixnum (NameError)

1.class         # => Integer
(2 ** 62).class # => Integer

# Integer (whole number)
p 5
p 0
p -12
p 9_999_999_999_999_999 # => 9999999999999999
p 99_99_99_99_99_99_99_99 # => 9999999999999999

# Float (with decimal component)
p 0.8
p 1.2
p -4.5
p .8 # => syntax error found (SyntaxError)
p -.8 # => syntax error found (SyntaxError)

p 5.next # => 6 (5 is Integer)
p 5.0.next # => undefined method 'next' for an instance of Float (NoMethodError)

# .class available on all objects and returns the class of an object
p 5.class # => Integer
p 5.0.class # => Float
