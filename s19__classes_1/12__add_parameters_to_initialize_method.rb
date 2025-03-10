# Add Parameters to initialize Method

class Gadget
  attr_accessor :username
  attr_writer :password
  attr_reader :production_number

  def initialize(username:, password:)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{self.object_id}"
  end
end

phone = Gadget.new(username: "Sviat", password: "topsecret")
phone #=> #<Gadget:0x00007f81ca0b6a50 @password="topsecret", @production_number="b-828", @username="Sviat">

laptop = Gadget.new(username: "Test user", password: "not-so-secret")
laptop #=> #<Gadget:0x00007f81cf09b390 @password="not-so-secret", @production_number="t-462", @username="Test user">

# Edge cases
tablet = Gadget.new #=> missing keywords: :username, :password (ArgumentError)
