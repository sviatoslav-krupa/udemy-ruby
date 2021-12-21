# The .concat Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482352#overview) is the link to the video.

# + doesn't mutate original array
# .concat mutates original array

nums = [1, 2, 3]

p nums + [4, 5] # => [1, 3, 3, 4, 5]
p nums # => [1, 2, 3]

p nums.concat([4, 5]) # => [1, 3, 3, 4, 5]
p nums # => [1, 3, 3, 4, 5]

# Edge case
# p nums.concat([[4, 5]]) # => [1, 3, 3, [4, 5]]
p nums.concat(4, 5) # => no implicit conversion of Integer into Array (TypeError)

def custom_concat(arr1, arr2)
  arr2.each { |item| arr1 << item }
  arr1
end

p custom_concat([1, 2, 3], [4, 5, 6]) # => [1, 2, 3, 4, 5, 6]
