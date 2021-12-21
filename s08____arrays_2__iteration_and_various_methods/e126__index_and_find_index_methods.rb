# The .index and .find_index Methods on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482358#overview) is the link to the video.

# .index and .find_index are the same methods
# Returns index position by value

colors = %w[Red Blue Green Red]

p colors.index("Blue") # => 1
p colors.find_index("Blue") # => 1

p colors.index("Red") # => 0 (returns only first occurrence)
p colors.find_index("Red") # => 0 (returns only first occurrence)

p colors.index("Orange") # => nil
p colors.find_index("Orange") # => nil
