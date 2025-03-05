# Class Variables across Subclasses

class Product
  @@product_counter = 0

  def initialize
    @@product_counter += 1
  end

  def self.product_counter
    @@product_counter
  end
end

class Widget < Product
  @@widget_counter = 0

  def initialize
    super
    @@widget_counter += 1
  end

  def self.widget_counter
    @@widget_counter
  end
end

class Thingamajig < Product
  @@thingamajig_counter = 0

  def initialize
    super
    @@thingamajig_counter += 1
  end

  def self.thingamajig_counter
    @@thingamajig_counter
  end
end

Widget.new
Thingamajig.new

Product.product_counter #=> 2
Widget.widget_counter #=> 1
Thingamajig.thingamajig_counter #=> 1

# Edge cases
Widget.product_counter #=> 2 (Widget has access to :product_counter - class variable of superclass)
Thingamajig.product_counter #=> 2 (Thingamajig has access to :product_counter - class variable of superclass)
Product.widget_counter #=> undefined method `widget_counter' for Product:Class (NoMethodError)
Product.thingamajig_counter #=> undefined method `thingamajig_counter' for Product:Class (NoMethodError)
