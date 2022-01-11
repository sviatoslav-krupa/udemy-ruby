# The self Keyword in an Instance Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482616#search) is the link to the video.

# self - refers to a current object

class Gadget
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
phone.to_s #=> "Gadget z-18 has the username User 49. It is made from the Gadget class and it has the id 1100"

laptop = Gadget.new
laptop.to_s #=> "Gadget o-251 has the username User 24. It is made from the Gadget class and it has the id 1120"
