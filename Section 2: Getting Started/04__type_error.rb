# Into to Exceptions (TypeError)

# TypeError - if some object doesn't have an expected type for some kind of operation.
# When Ruby runs into the error - it stops executing the file!

puts "4" + 3 # => no implicit conversion of Integer into String (TypeError)
puts 3 + "4" # => String can't be coerced into Integer (TypeError)
