# Multiply an Array with Asterisk Symbol

# returns a new array built by concatenating the number copies of self
[1, 2, 3] * 3 #=> [1, 2, 3, 1, 2, 3, 1, 2, 3]

# with a String argument, equivalent to ary.join(str)
[1, 2, 3] * "," #=> "1,2,3"

# Edge cases:
[1, [2, 3]] * 3 #=> [1, [2, 3], 1, [2, 3], 1, [2, 3]] (with nesting)
[1, 2, 3] * true #=> no implicit conversion of true into Integer (TypeError)
[1, 2, 3] * nil #=> no implicit conversion from nil to integer (TypeError)

def custom_multiply(array, number)
  new_array = []

  number.times do
    array.each { |item| new_array << item }
  end

  new_array
end

custom_multiply([1, 2, 3], 3) #=> [1, 2, 3, 1, 2, 3, 1, 2, 3]
custom_multiply([1, [2, 3]], 3) #=> [1, [2, 3], 1, [2, 3], 1, [2, 3]]
