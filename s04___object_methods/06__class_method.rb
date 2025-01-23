# The .class method

# Notes:
# * Class - a blueprint (template/schematic) for an object.
# * Object - an "instance" of the class.
# * Instantiation - a process of creating objects from classes.
# * .class available for ALL objects and returns the class of an object.

p "hello".class # => String
p "Ruby is fun".class # => String
p "123$".class # => String
p "".class # => String

p 5.class # => Integer
p -23.class # => Integer
p 100.class # => Integer
p 999_999_999.class # => Integer

p 3.14.class # => Float
p 0.23.class # => Float
p -10.99.class # => Float
