# Intro to Numbers and the .class Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477646#overview) is the link to the video.

# Notes:
# * Integer documentation (https://ruby-doc.org/core-2.3.3/Integer.html).
# * Class hierarchy: Numeric -> Integer, Float.
# * Class is a blueprint.
# * Starting with Ruby 2.4, Fixnum and Bignum are unified into Integer.
# * Starting with Ruby 2.4, usage of Fixnum and Bignum constants is deprecated.
1.class         # => Integer (old Fixnum)
(2 ** 62).class # => Integer (old Bignum)
Fixnum # => Integer
Bignum # => Integer

# Integer (whole number)
p 5
p 0
p -12

# Float (with decimal component)
p 0.8
p 1.2
p -4.5

p 5.next # => 6 (5 is Integer)
p 5.0.next # => undefined method `next' for 5.2:Float (NoMethodError) (5.0 is Float)

# .class available on all objects and returns the class of an object
p 5.class # => Integer
p 5.0.class # => Float
