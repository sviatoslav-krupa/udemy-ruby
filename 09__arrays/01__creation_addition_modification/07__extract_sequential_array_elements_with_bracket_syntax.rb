# Notes:
#   * Works the same as for String

numbers = [1, 3, 5, 7, 9, 15, 21]

# Get 4 elements starting from index position 2
numbers[2, 4] #=> [5, 7, 9, 15]
numbers[1, 3] #=> [3, 5, 7]

numbers[0]          #=> 1
numbers[0].class    #=> Integer
numbers[0, 1]       #=> [1]
numbers[0, 1].class #=> Array

# Edge cases:
numbers[4, 100] #=> [9, 15, 21] (just cut array at the end)
