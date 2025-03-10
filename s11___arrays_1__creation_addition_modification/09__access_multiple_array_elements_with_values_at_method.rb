# Access Multiple Array Elements with the .values_at Method

# .values_at returns always an array.

channels = %w[CBS FOX NBC ESPN UPN]

p channels.values_at(1) # => ["FOX"]
p channels.values_at(1, 2) # => ["FOX", "NBC"]
p channels.values_at(1, 2, 4) # => ["FOX", "NBC", "UPN"]
p channels.values_at(1, -1, -2) # =>  ["FOX", "UPN", "ESPN"]

# Can pass duplicate arguments
p channels.values_at(3, 3, 4) # =>  ["ESPN", "ESPN", "UPN"]

# Arguments have to be passed by comma (not in array)
p channels.values_at([1, 2]) # => no implicit conversion of Array into Integer (TypeError)

# Edge cases:
p channels.values_at(-100, 2000, 40) # => [nil nil, nil]
