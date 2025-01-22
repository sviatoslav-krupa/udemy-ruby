# Into to Exceptions

# When Ruby runs into the error - it stops executing the file!

# TypeError - if some object doesn't have an expected type for some kind of operation.
puts "4" + 3 # => no implicit conversion of Integer into String (TypeError)
puts 3 + "4" # => String can't be coerced into Integer (TypeError)

# NameError - if Ruby can't find a name that we are referencing in our program.
favorite_food = "Sushi"
puts favoritefood # => undefined local variable or method 'favoritefood' for main (NameError)
