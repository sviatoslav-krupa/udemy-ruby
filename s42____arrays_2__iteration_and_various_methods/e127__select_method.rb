# The .select Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482360#overview) is the link to the video.

# .select - extracts elements that fits certain condition

grades = [80, 95, 13, 76, 28, 39]
matches = grades.select { |grade| grade >= 75 } # => [80, 95, 76]
p matches

words = %w[level selfless racecar dinosaur]
palindromes = words.select { |word| word == word.reverse }
p palindromes # => ["level", "racecar"]
