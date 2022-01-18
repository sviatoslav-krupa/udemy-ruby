# Prefer Instance Methods to Instance Variables
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482652#search) is the link to the video.

class Gadget
  # We can overwrite readers (instance methods) to prepare instance variables before returning
  attr_accessor :username, :password
  attr_reader :production_number

  def initialize(username:, password:)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    # We can remove `self` keyword but not for :class method
    # Ruby assumes that you references instance method
    "Gadget #{production_number} has the username #{username}. It is made from the #{self.class} class and it has the id #{object_id}"
  end

  # You can overwrite default :attr_accessor, :attr_reader and :attr_writer
  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  # Pseudo variable
  # Doesn't create new variable, just represent existing variable in a different format
  def username
    "---#{@username}---"
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
phone.username #=> "---username---"
