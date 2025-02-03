# String Interpolation

# Interpolation - process of inserting a content within a string.
# "... #{variable or expression} ..."

# Works only with double quotes, not single quotes
name = "Sviat"
p "Hello #{name}, how are you?" # => "Hello Sviat, how are you?"
p 'Hello #{name}, how are you?' # => "Hello \#{name}, how are you?"

# variable or result of expression will be automatically converter to String by .to_s method
age = 24
p "I am " + age + " years old" # => no implicit conversion of Integer into String (TypeError)
p "I am " + age.to_s + " years old" # => "I am 24 years old"
p "I am #{age} years old" # => "I am 24 years old"
p "In five years I'll be #{age + 5} years old" # => "In five years I'll be 29 years old" (the expression in '#{}' evaluates first)

# Notes
p 5.to_s # => "5" (.to_s converts to String)
