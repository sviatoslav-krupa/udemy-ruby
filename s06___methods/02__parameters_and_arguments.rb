# Parameters and Arguments

# :name and :age is parameter
def praise_person(name, age)
  puts "#{name} (#{age} y.o.) is amazing!"
end

# "Sviat" and 24 is an argument
praise_person("Sviat", 24) # => Sviat (24 y.o.) is amazing!

# "David" and 35 is an argument
praise_person "David", 35 # => David (35 y.o.) is amazing!

praise_person # => wrong number of arguments (given 0, expected 1) (ArgumentError)


# Manipulation Arguments

def praise_person(name, age)
  puts "#{name.upcase} is amazing"
  puts "#{name} is charming"
  puts "#{name} is talented"
  puts "They are #{age + 5} years old."
end

praise_person("Sviat", 27)
=begin
  SVIAT is amazing
  Sviat is charming
  Sviat is talented
  They are 32 years old.
=end

# Be careful!!!
praise_person(27, "Sviat") # => undefined method 'upcase' for an instance of Integer (NoMethodError)


# Method definition works even without parentheses.

def test_method_with_params name
  p name
end
test_method_with_params "Sviat" # => "Sviat"
