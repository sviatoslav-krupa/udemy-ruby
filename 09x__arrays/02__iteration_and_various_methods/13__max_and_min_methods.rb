# The .max and .min Methods on an Array

# .max: https://docs.ruby-lang.org/en/3.2/Array.html#method-i-max
# .min: https://docs.ruby-lang.org/en/3.2/Array.html#method-i-min

stock_prices = [723.99, 434.12, 100, 84.7, 649.92]

stock_prices.max #=> 723.99
stock_prices.max(3) #=> [723.99, 649.92, 434.12]

stock_prices.min #=> 84.7
stock_prices.min(3) #=> [84.7, 100, 434.12]

fruits = %w[apple kiwi banana watermelon]
fruits.max #=> "watermelon"
fruits.min #=> "apple"

# Edge cases:
[true, true, false, nil].max #=> comparison of TrueClass with false failed (ArgumentError)
[1, 4, "qwe", 100].max #=> comparison of String with 4 failed (ArgumentError)

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

custom_max([1, 2, 6, 9, -1]) #=> 9
custom_max([]) #=> nil

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

custom_min([1, 2, 6, 9, -1]) #=> -1
custom_min([]) #=> nil
