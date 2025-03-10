# The .concat Method on an Array

# .+ - doesn't mutate original array
# .concat - mutates original array

nums = [1, 2, 3]

nums + [4, 5] # => [1, 3, 3, 4, 5]
nums # => [1, 2, 3]

nums.concat([4, 5]) # => [1, 3, 3, 4, 5]
nums # => [1, 3, 3, 4, 5]

# Edge cases
nums.concat(4, 5) # => no implicit conversion of Integer into Array (TypeError)

def custom_concat(arr1, arr2)
  arr2.each { |item| arr1 << item }
  arr1
end

custom_concat([1, 2, 3], [4, 5, 6]) # => [1, 2, 3, 4, 5, 6]
