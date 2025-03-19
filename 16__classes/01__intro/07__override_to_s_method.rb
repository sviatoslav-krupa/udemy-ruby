# Notes:
#   * .to_s - String-like representation of an object
#   * Calls when `print` or `puts` methods are using, but not for `p`

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}"
  end
end

phone = Gadget.new

# Without .to_s method overriding (Object class and a location in the memory)
phone.to_s #=> "#<Gadget:0x00007fa9060c4070>"
print phone #=> #<Gadget:0x00007fa9060c4070>
puts phone #=> #<Gadget:0x00007fa9060c4070>
p phone #=> #<Gadget:0x00007fa9060c4070 @password="topsecret", @production_number="b-621", @username="User 94">

# With .to_s method overriding
phone.to_s #=> "Gadget v-955 has the username User 26"
print phone #=> Gadget v-955 has the username User 26
puts phone #=> Gadget v-955 has the username User 26
p phone #=> #<Gadget:0x00007fa90180c238 @password="topsecret", @production_number="v-955", @username="User 26">
