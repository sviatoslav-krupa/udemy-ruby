# Notes:
#   * Best practice: modules end with "-able"
#   * If you're defining methods that will eventually be mixed in as instance methods do not include the self keyword

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
walmart.purchase("Ice cream") #=> "Ice cream has been purchased!"

class CornerMart < Supermarket; end
quickstop = CornerMart.new
quickstop.purchase("Slim Jim") #=> "Slim Jim has been purchased!"
