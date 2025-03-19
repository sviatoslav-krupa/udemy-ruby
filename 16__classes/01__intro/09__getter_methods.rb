# Notes:
#   * getters - for getting instance variables outside the object
#   * Instance methods have access to all instance variables and can call other instance methods

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def username
    @username
  end

  def production_number
    @production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{object_id}"
  end
end

phone = Gadget.new

phone.username          #=> "User 21"
phone.production_number #=> "c-628"
phone.password          #=> undefined method `password' for #<Gadget:0x00007f81d008e8d8 @username="User 54", @password="topsecret", @production_number="z-261"> (NoMethodError)
