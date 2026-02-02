module Purchasable
  def purchase(item)
    "#{item} has been purchased!"
  end
end
Purchasable.ancestors #=> [Purchasable] (.ancestors on module)

class Bookstore
  include Purchasable

  def purchase(item)
    "You bought a copy of #{item}!"
  end
end
Bookstore.ancestors                      #=> [Bookstore, Purchasable, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
Bookstore.new.purchase("Atlas Shrugged") #=> "You bought a copy of Atlas Shrugged!"

class Supermarket
  include Purchasable
end
Supermarket.ancestors                  #=> [Supermarket, Purchasable, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
Supermarket.new.purchase("Ice cream")  #=> "Ice cream has been purchased!"

class CornerMart < Supermarket; end
CornerMart.ancestors                 #=> [CornerMart, Supermarket, Purchasable, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
CornerMart.new.purchase("Slim Jim")  #=> "Slim Jim has been purchased!"
