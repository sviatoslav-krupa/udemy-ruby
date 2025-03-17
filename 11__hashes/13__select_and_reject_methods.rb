# Notes:
#   * .select - returns new hash consisting of entries for which the block returns true
#   * .reject - returns new hash consisting of entries for which the block returns false

hash = { a: 100, b: 200, c: 300 }

# .select
hash.select { |key, value| key == :a }    #=> {a: 100}
hash.select { |key, value| value < 200 }  #=> {a: 100}

# .reject
hash.reject { |key, value| key == :a }    #=> {b: 200, c: 300}
hash.reject { |key, value| value < 200 }  #=> {b: 200, c: 300}
