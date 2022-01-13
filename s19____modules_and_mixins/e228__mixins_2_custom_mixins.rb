# Mixins II - Custom Mixins
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482636#search) is the link to the video.

# Good practice: modules end with "-able"
module Purchasable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchasable
end
barnes_and_noble = Bookstore.new
barnes_and_noble.purchase("Atlas Shrugged") #=> "Atlas Shrugged has been purchased!"

class Supermarket
  include Purchasable
end
walmart = Supermarket.new
walmart.purchase("Ic cream") #=> "Ice cream has been purchased!"

class CornerMart < Supermarket; end
quickstop = CornerMart.new
quickstop.purchase("Slim Jim") #=> "Slim Jim has been purchased!"
