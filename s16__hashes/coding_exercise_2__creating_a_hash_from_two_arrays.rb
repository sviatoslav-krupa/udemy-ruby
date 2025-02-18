# Coding Exercise 2: Creating a Hash from two arrays

def hash_from_arrays(keys, values)
  result = {}
  items_number = keys.length

  items_number.times do |count|
    result.store(keys[count], values[count])
  end

  result
end

hash_from_arrays(%w[red green blue], [1, 2, 3]) # => {"red" => 1, "green" => 2, "blue" => 3}
hash_from_arrays([:hello, :happy], [:goodbye, :sad]) # => {hello: :goodbye, happy: :sad}
hash_from_arrays([], []) # => {}
