# Notes:
#   * shovel operator `<<` is identical to .push method
#   * .insert is more flexible, can insert values anywhere in the array

# Docs:
#   * https://ruby-doc.org/core-2.7.0/Array.html#method-i-push

# .push
locations = %w[House Airport Bar]
locations #=> ["House", "Airport", "Bar"]

locations.push("Restaurant")
locations #=> ["House", "Airport", "Bar", "Restaurant"]

locations.push("Office", "Pub")
locations #=> ["House", "Airport", "Bar", "Restaurant", "Office", "Pub"]

locations.push(["Library", "Church"]) # It adds a nested array to the end
locations #=> ["House", "Airport", "Bar", "Restaurant", "Office", "Pub", ["Library", "Church"]]


# shovel operator `<<`
numbers = [1, 2, 3, 4, 5]

numbers << 6
numbers #=> [1, 2, 3, 4, 5, 6]

numbers << 7, 8 #=> syntax error, unexpected ',', expecting end-of-input (SyntaxError)

numbers << 7 << 8
numbers #=> [1, 2, 3, 4, 5, 6, 7, 8]

numbers << [9, 10]
numbers #=> [1, 2, 3, 4, 5, 6, 7, 8, [9, 10]]


# .insert
letters = %w[a b c d e]
letters #=> ["a", "b", "c", "d", "e"]

letters.insert(1, "-") # inserts elements (second argument) at the index (first argument)
letters #=> ["a", "-", "b", "c", "d", "e"]

letters.insert(3, "!", ":")
letters #=> ["a", "-", "b", "!", ":", "c", "d", "e"]

letters.insert(2, %w[A B C])
letters #=> ["a", "-", ["A", "B", "C"], "b", "!", ":", "c", "d", "e"]

# Edge cases:
letters.insert(15, "Z") #=> ["a", "-", ["A", "B", "C"], "b", "!", ":", "c", "d", "e", nil, nil, nil, nil, nil, nil, "Z"]
