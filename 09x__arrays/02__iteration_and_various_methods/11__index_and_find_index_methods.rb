# The .index and .find_index Methods on an Array

# .index and .find_index are the same methods
# Returns the first index position by provided value

# .index - https://ruby-doc.org/3.2.2/Array.html#method-i-index
# .find_index - https://ruby-doc.org/3.2.2/Array.html#method-i-find_index

colors = %w[Red Blue Green Red]

p colors.index("Blue") #=> 1
p colors.find_index("Blue") #=> 1

p colors.index("Red") #=> 0 (returns only first occurrence)
p colors.find_index("Red") #=> 0 (returns only first occurrence)

p colors.index("Orange") #=> nil
p colors.find_index("Orange") #=> nil
