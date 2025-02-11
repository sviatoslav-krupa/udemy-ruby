# The .delete Method on a Hash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482506#overview) is the link to the video.

# .delete - deletes the key-value pair and returns the value from hash whose key is equal to key. If the key is not found, it returns nil.

hash = { a: 100, b: 200 }

removed = hash.delete(:a) #=> 100
hash #=> {:b=>200}
removed #=> 100

removed = hash.delete(:z) #=> nil
hash #=> {:b=>200}
removed #=> nil

# Edge case
hash.delete(:b, :z) #=> wrong number of arguments (given 2, expected 1) (ArgumentError)
