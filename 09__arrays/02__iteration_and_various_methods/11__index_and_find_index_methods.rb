# Notes:
#   * .index and .find_index are the same methods
#   * Returns the first index position by provided value

# Docs:
#   * .index:
#     https://ruby-doc.org/3.2.2/Array.html#method-i-index
#   * .find_index:
#     https://ruby-doc.org/3.2.2/Array.html#method-i-find_index

colors = %w[Red Blue Green Red]

colors.index("Blue")      #=> 1
colors.find_index("Blue") #=> 1

colors.index("Red")       #=> 0 (returns only first occurrence)
colors.find_index("Red")  #=> 0 (returns only first occurrence)

colors.index("Orange")      #=> nil
colors.find_index("Orange") #=> nil
