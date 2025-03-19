# Notes:
#   * attr_reader - read-only
#   * attr_writer - write-only
#   * attr_accessor - both read and write

class Gadget
  attr_accessor :username # for `username` and `username=(new_username)` methods
  attr_writer :password # for `password=(new_password)` method
  attr_reader :production_number # for `production_number` method

  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{self.object_id}"
  end
end

phone = Gadget.new

phone.username          #=> "User 21"
phone.production_number #=> "c-628"
phone.password          #=> undefined method `password' for #<Gadget:0x00007f81d008e8d8 @username="User 54", @password="topsecret", @production_number="z-261"> (NoMethodError)

phone.username = "New Username"
phone.username #=> "New Username"

phone.password = "new password"
phone.password #=>  undefined method `password' for #<Gadget:0x00007f81cb841800 @username="New Username", @password="new password", @production_number="w-519"> (NoMethodError) Did you mean?  password=

phone.production_number = "New production number" #=> undefined method `production_number=' for #<Gadget:0x00007f81cb841800 @username="New Username", @password="new password", @production_number="w-519"> (NoMethodError) Did you mean?  production_number
