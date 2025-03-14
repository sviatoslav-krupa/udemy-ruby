# Notes:
#   * .shift - the same as .pop only at the beginning of an array
#   * .shift(n) with argument always returns Array
#   * .unshift - opposite to .shift (adds element in the strict order at the start); the same as .push only at the beginning of an array

# Docs:
#   * .shift
#     https://ruby-doc.org/core-2.3.0/Array.html#method-i-shift
#   * .unshift
#     https://ruby-doc.org/core-2.3.0/Array.html#method-i-unshift

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr         #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.length  #=> 10

# .shift
removed_element = arr.shift
arr             #=> [2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.length      #=> 9
removed_element #=> 1

# .shift(n)
removed_elements = arr.shift(2)
arr               #=> [4, 5, 6, 7, 8, 9, 10]
arr.length        #=> 7
removed_elements  #=> [2, 3]

# Edge cases:
[].shift    #=> nil
[].shift(3) #=> []

nums = [1, 2, 3]
extract = nums.shift(100)
nums        #=> []
nums.length #=> 0
extract     #=> [1, 2, 3]

# .unshift
arr.unshift(12)
arr #=> [12, 4, 5, 6, 7, 8, 9, 10]

arr.unshift(20, 21)
arr #=> [20, 21, 12, 4, 5, 6, 7, 8, 9, 10]

arr.unshift([30, 31])
arr #=> [[30, 31], 20, 21, 12, 4, 5, 6, 7, 8, 9, 10]
