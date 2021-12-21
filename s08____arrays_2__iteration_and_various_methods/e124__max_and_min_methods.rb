# The .max and .min Methods on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482354#overview) is the link to the video.

stock_prices = [723.99, 434.12, 100, 84.7, 649.92]
p stock_prices.max # => 723.99
p stock_prices.min # => 84.7

fruits = %w[apple kiwi banana watermelon]
fruits.max # => "watermelon"
fruits.min # => "apple"

# Edge cases
[true, true, false, nil].max # => comparison of TrueClass with false failed (ArgumentError)
[1, 4, "qwe", 100].max # => comparison of String with 4 failed (ArgumentError)

def custom_max(arr)
  return nil if arr.empty?

  max_value = arr[0]
  i = 1

  while i < arr.length
    max_value = arr[i] if arr[i] > max_value
    i += 1
  end

  max_value
end

def custom_min(arr)
  return nil if arr.empty?

  min_value = arr[0]
  i = 1

  while i < arr.length
    min_value = arr[i] if arr[i] < min_value
    i += 1
  end

  min_value
end

p custom_max([1, 2, 6, 9, -1]) # => 9
p custom_max([]) # => nil
p custom_min([1, 2, 6, 9, -1]) # => -1
p custom_min([]) # => nil
