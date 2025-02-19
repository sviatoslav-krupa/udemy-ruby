# The .zip Method on an Array

# Documentation (https://ruby-doc.org/core-2.4.0/Array.html#method-i-zip)

# Converts any arguments to arrays, then merges elements of self with corresponding elements from each argument
# ([first_a, first_b], [second_a, second_b], [third_a, third_b])

a = [4, 5, 6]
b = [7, 8, 9]
[1, 2, 3].zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

# Edge cases
[1, 2].zip(a, b) # => [[1, 4, 7], [2, 5, 8]]

# If the size of any argument is less than the size of the initial array, nil values are supplied.
a.zip([1, 2], [8]) # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]

def custom_zip(arr1, arr2)
  new_arr = []

  arr1.each_with_index { |item, index| new_arr << [item, arr2[index]] }

  new_arr
end

custom_zip(%w[Bo Moe Joe], [true, false, true]) #=> [["Bo", true], ["Moe", false], ["Joe", true]]
