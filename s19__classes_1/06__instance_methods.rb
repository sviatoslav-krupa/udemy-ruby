# Instance Methods

# Encapsulation refers to a design paradigm where we restrict direct access to an object's data.
# Instead, we use methods to access and write that data, which hides away the complexity of the implementation and reduces the chance of bugs.

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}"
  end
end

phone = Gadget.new
laptop = Gadget.new

phone.info #=> "Gadget t-495 has the username User 63"
laptop.info #=> "Gadget z-118 has the username User 19"

# Edge case
# `phone.methods` shows also instance methods
phone.methods - Gadget.methods #=> [:info]

# Instance methods are available on objects but NOT classes
Gadget.info #=> undefined method 'info' for class Gadget (NoMethodError)
