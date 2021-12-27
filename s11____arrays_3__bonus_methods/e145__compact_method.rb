# The .compact Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482414#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.4.0/Array.html#method-i-compact)
# .compact - returns an array without nil elements
# .compact! - modifies original array

[1, 2, 3].compact # => [1, 2, 3]
[1, nil, 2, 3, nil].compact # => [1, 2, 3]
[1, nil, 2, false, 3, nil, false].compact # => [1, 2, false, 3, false]

def custom_compact(array)
  new_arr = []
  array.each do |item|
    next if item.nil?
    new_arr << item
  end
  new_arr
end
custom_compact([1, 2, 3]) #=> [1, 2, 3]
custom_compact([1, nil, 2, 3, nil]) #=> [1, 2, 3]
custom_compact([1, nil, 2, false, 3, nil, false]) #=> [1, 2, false, 3, false]
