# Notes:
#   * `[^xyz]` - ignore x, y, z elements
#   * ^ - negation symbol

sales = "I bought 9 apples, 25 bananas and 4 oranges at the store."
sales.scan(/[^aeiouAEIOU,\s\d\.]/) #=> ["b", "g", "h", "t", "p", "p", "l", "s", "b", "n", "n", "s", "n", "d", "r", "n", "g", "s", "t", "t", "h", "s", "t", "r"]
