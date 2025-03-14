# Notes:
#   * .map and .collect the same methods with the same functionality
#   * Creates a new array

# Docs:
#   * https://ruby-doc.org/core-2.5.0/Array.html#method-i-map

numbers = [1, 2, 3, 4, 5]
squares_with_map = numbers.map { |number| number ** 2 }
squares_with_map #=> [1, 4, 9, 16, 25]

squares_with_collect = numbers.collect { |number| number ** 2 }
squares_with_collect #=> [1, 4, 9, 16, 25]

fahrenheit = [105, 73, 40, 18, -2]
celcius = fahrenheit.map do |temperature|
  ((temperature - 32) * (5.0 / 9.0)).round
end
celcius #=> [41, 23, 4, -8, -19]


def cubes(array)
  array.map { |number| number ** 3 }
end
numbers = [3, 8, 11, 15, 89]
cubes(numbers) #=> [27, 512, 1331, 3375, 704969]

# Edge cases:
results = [1, 2, 3].map { |number| puts number ** 2 }
# OUTPUT:
#   1
#   4
#   9

results #=> [nil, nil, nil] (cause puts returns nil)
