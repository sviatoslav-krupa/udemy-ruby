# Instance Variables and the .initialize Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482610#search) is the link to the video.

# What is an instance variable?
# * Instance variables are variables that belong to a specific object.
# * Instance variables define the object's properties or attributes.
# * The instance variables make up the object's state.
# * Each object can have a custom state.
# * The state of an object can change over time.

# Define an instance variable
# * Instance variables begin with the `@` symbol (sigil).
# * Without the `@`, the variable would be interpreted as a local variable to the method it is used in.

# The .initialize method
# * The .initialize method is called immediately when an object is instantiated from a class with the .new method.
# * The .initialize method offers an opportunity to assign values to instance variables in order to define the object's state.
# * Id the .initialize method is not defined in the class, each object is initialized with no state.
# * The assignment of values to instance variables doesn't mean the values have to stay constant. The object's state can be altered later.

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadget.new
laptop = Gadget.new

phone #=> #<Gadget:0x00007fa9060b67b8 @password="topsecret", @production_number="w-177", @username="User 61">
laptop #=> #<Gadget:0x00007fa9060b5f48 @password="topsecret", @production_number="d-301", @username="User 91">

phone.instance_variables #=> [:@username, :@password, :@production_number]

# Edge cases:
Gadget.initialize #=> private method `initialize' called for Gadget:Class (NoMethodError)
phone.initialize #=> private method `initialize' called for #<Gadget:0x00007fa9060b67b8 @username="User 61", @password="topsecret", @production_number="w-177"> (NoMethodError)

# cause there is not reader and writer
phone.username #=> undefined method `username' for #<Gadget:0x00007fa9060b67b8 @username="User 61", @password="topsecret", @production_number="w-177"> (NoMethodError)
