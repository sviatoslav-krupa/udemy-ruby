# Notes:
#   * Works the same as for String

numbers = [1, 3, 5 ,7 ,9 ,15, 21, 18, 6]

# Get elements starting from 3rd index till 6th index inclusively
numbers[3..6] #=> [7, 9, 15, 21]

# Get elements starting from 3rd index till 6th index exclusively
numbers[3...6] #=> [7, 9, 15]

# Edge cases:
numbers[3..3]     #=> [7]
numbers[3...3]    #=> [] (not [nil])
numbers[3...100]  #=> [7, 9, 15, 21, 18, 6] (just cut array at the end)
