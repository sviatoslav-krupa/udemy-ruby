# Notes:
#   * .pop removes last element and returns it
#   * .pop(n) with argument always returns Array

# Docs:
#   * https://ruby-doc.org/core-2.3.0/Array.html#method-i-pop

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr         #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.length  #=> 10

removed_element = arr.pop #=> 10
arr                       #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
arr.length                #=> 9
removed_element           #=> 10

# .pop(n)
removed_elements = arr.pop(2)
arr               #=> [1, 2, 3, 4, 5, 6, 7]
arr.length        #=> 7
removed_elements  #=> [8, 9]

# Edge cases:
[].pop    #=> returns nil
[].pop(3) #=> []

new_arr = [1, 2, 3]
returned_elements = new_arr.pop(10) # just removes all elements, no errors
new_arr           #=> []
new_arr.length    #=> 0
returned_elements #=> [1, 2, 3]

new_arr = [1, 2, 3]
returned_elements = new_arr.pop(0)
new_arr           #=> [1, 2, 3]
new_arr.length    #=> 3
returned_elements #=> []
