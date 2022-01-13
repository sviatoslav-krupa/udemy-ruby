# The prepend Keyword
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482640#search) is the link to the video.

# prepend - works as .include, but places module methods before the object instance methods

module Purchasable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  prepend Purchasable

  def purchase(item)
    "You bought a copy of #{item}!"
  end
end

Bookstore.ancestors #=> [Purchasable, Bookstore, Object, PP::ObjectMixin, Kernel, BasicObject]
Bookstore.new.purchase("Atlas Shrugged") #=> "Atlas Shrugged has been purchased!"
