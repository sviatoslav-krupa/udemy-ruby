# Notes:
#   * Class hierarchy: Numeric -> Integer, Float
#   * alias - alternate name for the same method

# Starting with Ruby 2.4, Fixnum and Bignum are unified into Integer, usage of Fixnum and Bignum constants is deprecated
Fixnum #=> uninitialized constant Fixnum (NameError)
Bignum #=> uninitialized constant Fixnum (NameError)

1.class         #=> Integer
(2 ** 62).class #=> Integer

# Integer (whole number)
5                       #=> 5
0                       #=> 0
-12                     #=> -12
9_999_999_999_999_999   #=> 9999999999999999
99_99_99_99_99_99_99_99 #=> 9999999999999999

# Float (with decimal component)
0.8   #=> 0.8
1.2   #=> 1.2
-4.5  #=> -4.5
.8    #=> syntax error found (SyntaxError)
-.8   #=> syntax error found (SyntaxError)

# .next
5.next    #=> 6 (5 is Integer)
5.0.next  #=> undefined method 'next' for an instance of Float (NoMethodError)

# .succ and .pred
10.succ #=> 11 (successor, :succ is alias for :next)
10.pred #=> 9 (predecessor)

# .class
5.class   #=> Integer
5.0.class #=> Float
