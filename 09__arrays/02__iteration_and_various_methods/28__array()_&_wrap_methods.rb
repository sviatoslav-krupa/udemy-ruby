# Notes: 
#   * Array() and Array.wrap() methods converts an object into an array
#   * If the object is already an array, it returns the object
#   * If the object is not an array, it converts the object into an array
#   * If the object is nil, it returns an empty array

Array([1,2,3]) #=> [1,2,3]
Array(1)       #=> [1]
Array(nil)     #=> []

require 'active_support/all' # needed for `Array.wrap` method
Array.wrap([1,2,3]) #=> [1,2,3]
Array.wrap(1)       #=> [1]
Array.wrap(nil)     #=> []

def sum(numbers)
  # Or `Array.wrap(numbers).inject(0, :+)`
  Array(numbers).inject(0, :+)
end
sum([1,2,3]) #=> 6
sum(1)       #=> 1
sum(nil)     #=> 0

# Edge cases:
Array(a: 1, b: 2)       #=> [[:a, 1], [:b, 2]] (converts to a two-dimensional array)
Array.wrap(a: 1, b: 2)  #=> [{ a: 1, b: 2 }] (converts to a one-dimensional array)
