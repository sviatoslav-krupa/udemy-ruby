# Setter Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482620#search) is the link to the video.

# setters - for setting instance variables for an object

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def username
    @username
  end

  def username=(new_username)
    @username = new_username
  end

  def password=(new_password)
    @password = new_password
  end

  def production_number
    @production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{self.object_id}"
  end
end

phone = Gadget.new

phone.username #=> "User 21"
phone.production_number #=> "c-628"
phone.password #=> undefined method `password' for #<Gadget:0x00007f81d008e8d8 @username="User 54", @password="topsecret", @production_number="z-261"> (NoMethodError)

phone.username = "New Username"
phone.username #=> "New Username"

phone.password = "new password"
phone.password #=>  undefined method `password' for #<Gadget:0x00007f81cb841800 @username="New Username", @password="new password", @production_number="w-519"> (NoMethodError) Did you mean?  password=

phone.production_number = "New production number" #=> undefined method `production_number=' for #<Gadget:0x00007f81cb841800 @username="New Username", @password="new password", @production_number="w-519"> (NoMethodError) Did you mean?  production_number
