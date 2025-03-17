# Coding Exercise 1: Count of values in a Hash

def value_count(hash, value)
  hash.values.count(value)
end

hash = { a: 5, b: 2, c: 3, d: 2 }

value_count(hash, 2) #=> 2
value_count(hash, 3) #=> 1
