# Instance Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482612#search) is the link to the video.

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
