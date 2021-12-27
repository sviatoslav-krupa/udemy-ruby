# Array Intersection with the Ampersand Symbol
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482432#overview) is the link to the video.

# `&` (intersection) — returns a new array containing elements that common to the two arrays and then uniq.
# The order is preserved from the original array.

[1, 1, 3, 5] & [3, 2, 1] #=> [1, 3]
[1, 1, 3, 5].&([3, 2, 1]) #=> [1, 3]
%w[a b b z] & %w[a b c] #=> ['a', 'b']
%w[a b b z].&(%w[a b c]) #=> ['a', 'b']

# Edge cases
[1, 1, 3, 5] & [10, 11, 12] #=> []
[1, 1, 3, 5] & [3, 1, 6] & [1, 3, 10, 12] #=> [1, 3] (multiple arrays)

def custom_intersection(arr1, arr2)
  new_arr = []

  arr1.each do |item|
    new_arr << item if arr2.include?(item) && !new_arr.include?(item)
  end

  new_arr
end
custom_intersection([1, 1, 3, 5], [3, 2, 1]) #=> [1, 3]
custom_intersection(%w[a b b z], %w[a b c]) #=> ['a', 'b']
