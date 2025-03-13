# The .delete Method on a Hash

# .delete - deletes the key-value pair and returns the value from hash which key is equal to key.
# If the key is not found, it returns nil.

hash = { a: 100, b: 200 }

removed = hash.delete(:a) #=> 100
hash #=> {b: 200}
removed #=> 100

removed = hash.delete(:z) #=> nil
hash #=> {b: 200}
removed #=> nil

# Edge cases
hash.delete(:b, :z) #=> wrong number of arguments (given 2, expected 1) (ArgumentError)
