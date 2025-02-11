# The .reverse Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482348#overview) is the link to the video.

p "Hello".reverse # => "olleH"
p [1, 2, 3].reverse # => [3, 2, 1]
p %w[a b c].reverse # => ["c", "b", "a"]
p [true, true, false, false, true].reverse # => [true, false, false, true, true]

queue = [4, 8, 15, 16, 23, 42]
p queue # => [4, 8, 15, 16, 23, 42]

queue.reverse
p queue # => [4, 8, 15, 16, 23, 42]

queue.reverse!
p queue # => [42, 23, 16, 15, 8, 4]
