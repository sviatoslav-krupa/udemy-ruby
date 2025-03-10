# Intro To Modules

# What is a module?
# * A module is a toolbox or container of methods and constants.
# * Module methods and constants can be used as needed.
# * Modules create namespaces for methods with the same name.
# * Modules cannot be used to create instances.
# * Modules can be mixed into classes to add behaviour.

# Syntax and Style
# * Module names are written in PascalCase (UpperCamelCase).
# * Constants in modules should be written in ALL_CAPS.
# * Access module methods with `.` (dot operator).
# * Access module constants with `::` symbol (scope resolution operator).

module LengthConversions
  CONSTANT = "test constant"

  # need to prefix method name with `self.`
  def self.miles_to_feet(miles)
    miles * 5280
  end

  class << self
    def miles_to_inches(miles)
      feet = self.miles_to_feet(miles)
      feet * 12
    end

    def miles_to_centimeters(miles)
      inches = miles_to_inches(miles) # by default, Ruby looks for a method in the current module and prefix `self.` automatically
      inches * 2.54
    end
  end

  def method_without_self
    "I'm a method without a self"
  end

  def self.wrapper_for_method_without_self
    method_without_self # still will be an error; under the hood Ruby tries `self.method_without_self` which is missing
  end
end


LengthConversions.class #=> Module

LengthConversions::CONSTANT #=> "test constant"

LengthConversions.miles_to_feet(100) #=> 528000
LengthConversions.miles_to_inches(100) #=> 6336000
LengthConversions.miles_to_centimeters(100) #=> 16093440.0

# Edge cases
LengthConversions.new #=> undefined method `new' for LengthConversions:Module (NoMethodError)
LengthConversions.method_without_self #=> undefined method 'method_without_self' for module LengthConversions (NoMethodError)
LengthConversions.wrapper_for_method_without_self #=> undefined method 'method_without_self' for module LengthConversions (NoMethodError)
