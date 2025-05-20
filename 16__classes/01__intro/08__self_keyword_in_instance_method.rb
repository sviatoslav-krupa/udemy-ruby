# Notes:
#   * self - refers to a current object

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{object_id}"

    # This produces syntax error because of a `class` keyword
    # "Gadget #{@production_number} has the username #{@username}. It is made from the #{class} class and it has the id #{object_id}"
  end

  def details
    # For methods, if you omit .self, Ruby will try find it in the current object
    nil_details   #=> the same as `self.nil_details`
    class_details #=> the same as `self.class_details`
  end

  def nil_details
    puts "Is it nil? #{nil?}"
  end

  def class_details
    # We need to set .self explicitly cause `class` is a keyword (here, we need .class, not `class`)
    puts "It is made from the #{self.class} class."
  end
end

phone = Gadget.new
phone.to_s #=> "Gadget z-18 has the username User 49. It is made from the Gadget class and it has the id 1100"

laptop = Gadget.new
laptop.to_s #=> "Gadget o-251 has the username User 24. It is made from the Gadget class and it has the id 1120"

phone.details
# OUTPUT:
#   Is it nil? false
#   It is made from the Gadget class.
