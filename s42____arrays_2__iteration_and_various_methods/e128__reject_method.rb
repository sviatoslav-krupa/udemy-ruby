# The .reject Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482362#overview) is the link to the video.

# .reject - extracts elements that doesn't fit certain condition (opposite to .select)

animals = %w[cheetah cat lion elephant dog cow]

without_c = animals.reject { |animal| animal.include?("c") }
p without_c # => ["lion", "elephant", "dog"]

with_c = animals.select { |animal| animal.include?("c") }
p with_c # => ["cheetah", "cat", "cow"]
