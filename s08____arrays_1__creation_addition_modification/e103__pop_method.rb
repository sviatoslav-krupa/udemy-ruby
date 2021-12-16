# The .pop Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482148#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.3.0/Array.html#method-i-pop)

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr.length # => 10

removed_element = arr.pop # => 10 (removes last element and returns it)
p arr # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
p arr.length # => 9
p removed_element # => 10

# .pop(n) with argument always returns Array
removed_elements = arr.pop(2)
p arr # => [1, 2, 3, 4, 5, 6, 7]
p arr.length # => 7
p removed_elements # => [8, 9]

# Edge cases
[].pop # => returns nil
[].pop(3) # => []

new_arr = [1, 2, 3]
returned_elements = new_arr.pop(10) # just removes all elements, no errors
p new_arr # => []
p new_arr.length # => 0
p returned_elements # => [1, 2, 3]
