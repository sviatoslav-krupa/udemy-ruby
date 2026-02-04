# Notes:
#   * .to_a - converts object to an array

letters_range = "A".."T"
letters_range       #=> "A".."T"
letters_range.class #=> Range
letters_range[0]    #=> undefined method `[]' for "A".."T":Range (NoMethodError)

letters_array = letters_range.to_a
letters_array       #=> ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"]
letters_array.class #=> Array
letters_array[0]    #=> "A"

numbers_range = 1..10
numbers_range       #=> 1..10
numbers_range.class #=> Range
numbers_range[2]    #=> undefined method `[]' for 1..10:Range (NoMethodError)

numbers_array = numbers_range.to_a
numbers_array       #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers_array.class #=> Array
numbers_array[2]    #=> 3

# Edge cases:
1...10.to_a         #=> undefined method `to_a' for 10:Integer (NoMethodError)
(3.14..10).to_a     #=> can't iterate from Float (TypeError)
(3.14..10.1).to_a   #=> can't iterate from Float (TypeError)
(3..10.1).to_a      #=> [3, 4, 5, 6, 7, 8, 9, 10]
(true...false).to_a #=> bad value for range (ArgumentError)
