# The .include? Method on a String

# .include? => true | false - check if a substring exists in a string

name = "Snow White 123"

p name.include?("S") # => true
p name.include?("h") # => true
p name.include?(" ") # => true
p name.include?("  ") # => false
p name.include?("s") # => false (case sensitivity)
p name.downcase.include?("s") # => true
p name.upcase.include?("OW") # => true

p name.include?("snow") # => false
p name.include?("Snow") # => true
p name.include?("rain") # => false
p name.include?("it") # => true
p name.include?("sit") # => false

# Edge cases
p name.include?(123) # => no implicit conversion of Integer into String (TypeError)
p name.include?('123') # => true
p name.include?('hW') # => false (check ordering of characters)
