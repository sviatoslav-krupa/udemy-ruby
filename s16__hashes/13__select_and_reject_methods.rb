# The .select and .reject Methods on a Hash

hash = { a: 100, b: 200, c: 300 }

# .select - returns new hash consisting of entries for which the block returns true.
hash.select { |key, value| key == :a } # => {a: 100}
hash.select { |key, value| value < 200 } # => {a: 100}

# .reject - returns new hash consisting of entries for which the block returns false.
hash.reject { |key, value| key == :a } # => {b: 200, c: 300}
hash.reject { |key, value| value < 200 } # => {b: 200, c: 300}
