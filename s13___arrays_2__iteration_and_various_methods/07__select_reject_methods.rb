# The .select and .reject methods on an Array


# .select - extracts elements that fits certain condition

grades = [80, 95, 13, 76, 28, 39]
matches = grades.select { |grade| grade >= 75 } # => [80, 95, 76]
p matches

words = %w[level selfless racecar dinosaur]
palindromes = words.select { |word| word == word.reverse }
p palindromes # => ["level", "racecar"]


# .reject - extracts elements that doesn't fit certain condition (opposite to .select)

animals = %w[cheetah cat lion elephant dog cow]

without_c = animals.reject { |animal| animal.include?("c") }
p without_c # => ["lion", "elephant", "dog"]

with_c = animals.select { |animal| animal.include?("c") }
p with_c # => ["cheetah", "cat", "cow"]
