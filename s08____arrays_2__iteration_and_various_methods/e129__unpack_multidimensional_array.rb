# Unpack a Multidimensional Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482366#overview) is the link to the video.

# Multidimensional array - contains other arrays inside

users = [["Bob", 25, "male"], ["Susan", 21, "female"], ["Larry", 45, "male"]] # multidimensional array

p users[0] # => ["Bob", 25, "male"]
p users[0][0] # => "Bob"
p users[0][1] # => 25
p users[0][2] # => "male"

bob, susan, larry = users
p bob # => ["Bob", 25, "male"]
p susan # => ["Susan", 21, "female"]
p larry # => ["Larry", 45, "male"]

# Edge cases
test_1, test_2 = users
p test_1 # => ["Bob", 25, "male"]
p test_2 # => ["Susan", 21, "female"]

test_1, test_2, test_3, test_4 = users
p test_1 # => ["Bob", 25, "male"]
p test_2 # => ["Susan", 21, "female"]
p test_3 # => ["Larry", 45, "male"]
p test_4 # => nil

num1, num2, num3 = [1, 2, 3]
p num1 # => 1
p num2 # => 2
p num3 # => 3
