# Into to Exceptions

# When Ruby runs into the error - it stops executing the file!

# TypeError - if some object doesn't have an expected type for some kind of operation.
p "4" + 3 # => no implicit conversion of Integer into String (TypeError)
p 3 + "4" # => String can't be coerced into Integer (TypeError)

# NameError - if Ruby can't find a name that we are referencing in our program.
favorite_food = "Sushi"
p favoritefood # => undefined local variable or method 'favoritefood' for main (NameError)

# NoMethodError - when we reference a method that doesn't exist on an object.
p "hello".lenth # => undefined method 'lenth' for an instance of String (NoMethodError)
p 5.length # => undefined method 'length' for an instance of Integer (NoMethodError)
