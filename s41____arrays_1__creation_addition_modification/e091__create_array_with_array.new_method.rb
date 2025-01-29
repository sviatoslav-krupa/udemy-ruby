# Create an Array with Array.new Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482098#overview) is the link to the video.

p Array.new # => []
p Array.new(3) # => [nil, nil, nil]
p Array.new(3, "qwe") # => ["qwe", "qwe", "qwe"]
p Array.new(3, [1, 2, 3]) # => [[1, 2, 3], [1, 2, 3], [1, 2, 3]]

# Edge cases
p Array(3.14) # => [nil, nil, nil]
p Array(3.94) # => [nil, nil, nil]
p Array("qwe") # => no implicit conversion of String into Integer (TypeError)
