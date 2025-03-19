# Notes:
#   * private method - can't be called outside the object, can be called by another instance methods

class Gadget
  attr_accessor :username
  attr_writer :password
  attr_reader :production_number

  def initialize(username:, password:)
    @username = username
    @password = password
    @production_number = generate_production_number # private method is available inside the object
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{self.object_id}"
  end

  private

  def generate_production_number
    "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadget.new(username: "username", password: "password")

phone.initialize                  #=> private method `initialize' called for #<Gadget:0x00007fb4f12053c0 @username="username", @password="password", @production_number="v-569"> (NoMethodError)
phone.generate_production_number  #=> private method `generate_production_number' called for #<Gadget:0x00007fb4f12053c0 @username="username", @password="password", @production_number="v-569"> (NoMethodError)
phone.production_number           #=> "v-569"
