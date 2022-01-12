# Intro To Modules
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482626#search) is the link to the video.

# What is a module?
# * A module is a toolbox or container of methods and constants.
# * Module methods and constants can be used as needed.
# * Modules create namespaces for methods with the same name.
# * Modules cannot be used to create instances.
# * Modules can be mixed into classes to add behaviour.

# Syntax and Style
# * Module names are written in UpperCamelCase.
# * Constants in modules should be written in ALL_CAPS.
# * Access module methods with `.` (dot operator).
# * Access module constants with `::` symbol (scope resolution operator).

module LengthConversions
  CONSTANT = "test constant"
  # with .self we can call method right in LengthConversions

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

LengthConversions::CONSTANT #=> "test constant"

LengthConversions.miles_to_feet(100) #=> 528000
LengthConversions.miles_to_inches(100) #=> 6336000
LengthConversions.miles_to_centimeters(100) #=> 16093440.0

# Edge case
LengthConversions.new #=> undefined method `new' for LengthConversions:Module (NoMethodError)
