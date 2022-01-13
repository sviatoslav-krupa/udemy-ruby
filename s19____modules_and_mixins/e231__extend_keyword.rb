# The extend Keyword
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482642#search) is the link to the video.

# extend - add module methods as a class methods

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
