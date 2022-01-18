# Add Validation to Setter Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482650#search) is the link to the video.

class Gadget
  attr_accessor :username, :password
  attr_reader :production_number

  def initialize(username:, password:)
    @username = username
    @password = password
    @production_number = generate_production_number # private method is available inside the object
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{self.object_id}"
  end

  # You can overwrite default :attr_accessor, :attr_reader and :attr_writer
  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  private

  def generate_production_number
    "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def validate_password(password)
    password.is_a?(String) && password.length >= 6 && password =~ /\d/
  end
end

phone = Gadget.new(username: "username", password: "password")
phone.password #=> "password"

phone.password = "qwe"
phone.password #=> "password"

phone.password = "password123"
phone.password #=> "password123"
