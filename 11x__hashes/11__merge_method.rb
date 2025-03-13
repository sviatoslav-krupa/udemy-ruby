# The .merge Method to Combine Hashes

# .merge - returns new hash containing the contents of other_hash and the contents of hash.
# The value for entries with duplicate keys will be that of other_hash.

# .merge! - mutates original object.

hash_1 = { a: 100, b: 200 }
hash_2 = { b: 254, c: 300 }

result = hash_1.merge(hash_2)
hash_1 #=> {a: 100, b: 200}
hash_2 #=> {a: 100, b: 254, c: 300}
result #=> {a: 100, b: 254, c: 300}

result = hash_2.merge(hash_1)
result #=> {b: 200, c: 300, a: 100}

def custom_merge(hash1, hash2)
  result = hash1.dup

  hash2.each do |key, value|
    result[key] = value
  end

  result
end

custom_merge(hash_1, hash_2) #=> {a: 100, b: 254, c: 300}
custom_merge(hash_2, hash_1) #=> {b: 200, c: 300, a: 100}
