# Notes:
#   * .select - extracts elements that fits certain condition
#   * .reject - extracts elements that doesn't fit certain condition (opposite to .select)

# .select
grades = [80, 95, 13, 76, 28, 39]
matches = grades.select { |grade| grade >= 75 }
matches #=> [80, 95, 76]

words = %w[level selfless racecar dinosaur]
palindromes = words.select { |word| word == word.reverse }
palindromes #=> ["level", "racecar"]

# .reject
animals = %w[cheetah cat lion elephant dog cow]
without_c = animals.reject { |animal| animal.include?("c") }
without_c #=> ["lion", "elephant", "dog"]

with_c = animals.select { |animal| animal.include?("c") }
with_c #=> ["cheetah", "cat", "cow"]
