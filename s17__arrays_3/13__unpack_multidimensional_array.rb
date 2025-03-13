# Unpack a Multidimensional Array

# Multidimensional array - contains other arrays inside

users = [["Bob", 25, "male"], ["Susan", 21, "female"], ["Larry", 45, "male"]] # multidimensional array

users[0] #=> ["Bob", 25, "male"]
users[0][0] #=> "Bob"
users[0][1] #=> 25
users[0][2] #=> "male"

bob, susan, larry = users
bob #=> ["Bob", 25, "male"]
susan #=> ["Susan", 21, "female"]
larry #=> ["Larry", 45, "male"]

# Edge cases:
test_1, test_2 = users
test_1 #=> ["Bob", 25, "male"]
test_2 #=> ["Susan", 21, "female"]

test_1, test_2, test_3, test_4 = users
test_1 #=> ["Bob", 25, "male"]
test_2 #=> ["Susan", 21, "female"]
test_3 #=> ["Larry", 45, "male"]
test_4 #=> nil

num1, num2, num3 = [1, 2, 3]
num1 #=> 1
num2 #=> 2
num3 #=> 3
