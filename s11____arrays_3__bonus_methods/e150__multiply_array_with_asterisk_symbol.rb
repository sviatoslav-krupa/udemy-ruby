# Multiply an Array with Asterisk Symbol
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482426#overview) is the link to the video.

# returns a new array built by concatenating the int copies of self
[1, 2, 3] * 3 #=> [1, 2, 3, 1, 2, 3, 1, 2, 3]

# with a String argument, equivalent to ary.join(str)
[1, 2, 3] * "," #=> "1,2,3"

# Edge cases
[1, [2, 3]] * 3 #=> [1, [2, 3], 1, [2, 3], 1, [2, 3]] (with nesting)

def custom_multiply(array, number)
  new_array = []

  number.times do
    array.each { |item| new_array << item }
  end

  new_array
end
custom_multiply([1, 2, 3], 3) #=> [1, 2, 3, 1, 2, 3, 1, 2, 3]
custom_multiply([1, [2, 3]], 3) #=> [1, [2, 3], 1, [2, 3], 1, [2, 3]]
