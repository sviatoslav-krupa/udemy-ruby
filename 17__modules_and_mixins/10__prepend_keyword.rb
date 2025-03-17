# Notes:
#   * `prepend` - works as `include`, but places module methods before the object instance methods in the method lookup path

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

Bookstore.ancestors                           #=> [Purchasable, Bookstore, Purchasable, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
Bookstore.new.purchase("Atlas Shrugged") #=> "Atlas Shrugged has been purchased!"
