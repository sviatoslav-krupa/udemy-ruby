# The .shift and .unshift Methods

# Documentation
# * .shift - https://ruby-doc.org/core-2.3.0/Array.html#method-i-shift
# * .unshift - https://ruby-doc.org/core-2.3.0/Array.html#method-i-unshift

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr.length # => 10


# .shift - the same as .pop only at the beginning of an array
removed_element = arr.shift
p arr # => [2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr.length # => 9
p removed_element # => 1

# .shift(n) with argument always returns Array
removed_elements = arr.shift(2)
p arr # => [4, 5, 6, 7, 8, 9, 10]
p arr.length # => 7
p removed_elements # => [2, 3]

# Edge cases
[].shift # => nil
[].shift(3) # => []

nums = [1, 2, 3]
extract = nums.shift(100)
p nums # => []
p nums.length # => 0
p extract # => [1, 2, 3]


# .unshift - opposite to .shift (adds element in the strict order at the start); the same as .push only at the beginning of an array
arr.unshift(12)
p arr # => [12, 4, 5, 6, 7, 8, 9, 10]

arr.unshift(20, 21)
p arr # => [20, 21, 12, 4, 5, 6, 7, 8, 9, 10]

arr.unshift([30, 31])
p arr # => [[30, 31], 20, 21, 12, 4, 5, 6, 7, 8, 9, 10]
