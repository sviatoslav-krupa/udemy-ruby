class Gadget
  attr_accessor :username, :password
  attr_reader :production_number

  def initialize(username:, password:)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the id #{self.object_id}"
  end

  # You can overwrite default :attr_accessor, :attr_reader and :attr_writer
  # Overriding should placed lower in the code than initial declaration
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
