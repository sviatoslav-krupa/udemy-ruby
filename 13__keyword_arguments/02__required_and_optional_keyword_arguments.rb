# Notes:
#   * Keyword arguments - a new feature in Ruby 2.0 that is conceptually similar to passing a hash, but with better error handling
#   * allow the invocation of a method to specify which parameters the arguments correspond to

def sum(a: 2, b:)
  # The order of required and optional arguments doesn't matter
  # :a is an optional argument (2 is a fallback value)
  # :b is a required argument
  a + b
end

sum(a: 2, b: 3) #=> 5
sum(b: 3, a: 2) #=> 5
sum(b: 5)       #=> 7

# Here, not just nil as in case of hashes, but error
sum       #=> missing keyword: :b (ArgumentError)
sum(a: 3) #=> missing keyword: :b (ArgumentError)
sum(2, 3) #=> wrong number of arguments (given 2, expected 0; required keyword: b) (ArgumentError)
