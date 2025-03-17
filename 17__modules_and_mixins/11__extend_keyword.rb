# Notes:
#   * `extend` - adds module methods as class methods

module Announcer
  def who_am_i
    "The name if this class is #{self}" # self will reference a class itself
  end
end

class Dog
  extend Announcer
end

class Cat
  extend Announcer
end

Dog.who_am_i #=> "The name if this class is Dog"
Cat.who_am_i #=> "The name if this class is Cat"

# Edge cases:
Dog.new.who_am_i #=> undefined method `who_am_i' for #<Dog:0x00007f9bc315e6c0> (NoMethodError)
