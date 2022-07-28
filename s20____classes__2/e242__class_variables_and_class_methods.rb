# Class Variables and Class Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482664#search) is the link to the video.

# What is a class variable?
# * Some pieces of data extend beyond the scope of a single object.
# * A class variable solves the issue of data duplication across instances.
# * A class variable belongs to the whole class rather than to one instance.
# * Class variables store information that doesn't belong to an instance.

# What is a class method?
# * A class method belongs to the whole class rather than to one instance.
# * Class methods contain functionality that doesn't involve one instance.
# * A class method can be called even if objects/instances don't exist.
# The :new method that we call upon a class to create an object is an example of a class method.

# Syntax
# * Class variables begin with `@@` (instance variables begin with `@`).
# * Class methods are prefixed with the `self` keyword.
# * Be careful! In an instance method definition, `self` refers to the object.

class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.description
    "Hi there, I'm the blueprint for Bicycle! Use me to create a bicycle object."
  end

  # Other way to define class method - prepend classname instead of `self`; `self` is preferred
  # Need to create getters and setters for class variables as well as for instance variables
  def Bicycle.count
    @@count
  end
end

Bicycle.maker #=> undefined method `maker' for Bicycle:Class (NoMethodError)
Bicycle.count #=> 0
Bicycle.description #=> "Hi there, I'm the blueprint for Bicycle! Use me to create a bicycle object."

bicycle_object = Bicycle.new
Bicycle.count #=> 1
bicycle_object.count #=> undefined method `count' for #<Bicycle:0x00007fbca19a85c0> (NoMethodError)
bicycle_object.maker #=> undefined method `maker' for #<Bicycle:0x00007ff3d393e440> (NoMethodError)
bicycle_object.description #=> undefined method `description' for #<Bicycle:0x00007ff3d390fb90> (NoMethodError)

Bicycle.new
Bicycle.new
Bicycle.new
Bicycle.count #=> 4
