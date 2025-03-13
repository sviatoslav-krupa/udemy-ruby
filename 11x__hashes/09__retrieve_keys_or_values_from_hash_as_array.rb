# Retrieve Keys or Values from Hash as an Array

shopping_list = {
  bananas: 5,
  oranges: 10,
  carrots: 3,
  crackers: 15
}

# .keys - returns array of hash's keys.
shopping_list.keys #=> [:bananas, :oranges, :carrots, :crackers]

# .values - returns array of hash's values.
shopping_list.values #=> [5, 10, 3, 15]
