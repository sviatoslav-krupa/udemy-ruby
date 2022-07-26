# The .push Method, the Shovel Operator, and the .insert Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482146#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.7.0/Array.html#method-i-push)


# .push

locations = %w[House Airport Bar]
p locations # => ["House", "Airport", "Bar"]

locations.push("Restaurant")
p locations # => ["House", "Airport", "Bar", "Restaurant"]

locations.push("Office", "Pub")
p locations # => ["House", "Airport", "Bar", "Restaurant", "Office", "Pub"]

locations.push(["Library", "Church"]) # It adds a nested array to the end
p locations # => ["House", "Airport", "Bar", "Restaurant", "Office", "Pub", ["Library", "Church"]]


# shovel operator `<<` (identical to .push method)

numbers = [1, 2, 3, 4, 5]

numbers << 6
p numbers # => [1, 2, 3, 4, 5, 6]

numbers << 7, 8 # => syntax error, unexpected ',', expecting end-of-input (SyntaxError)

numbers << 7 << 8
p numbers # => [1, 2, 3, 4, 5, 6, 7, 8]

numbers << [9, 10]
p numbers # => [1, 2, 3, 4, 5, 6, 7, 8, [9, 10]]


# .insert (more flexible, can insert values anywhere in the array)

letters = %w[a b c d e]
p letters # => ["a", "b", "c", "d", "e"]

letters.insert(1, "-") # inserts elements (second argument) at the index (first argument)
p letters # => ["a", "-", "b", "c", "d", "e"]

letters.insert(3, "!", ":")
p letters # => ["a", "-", "b", "!", ":", "c", "d", "e"]

letters.insert(2, %w[A B C])
p letters # => ["a", "-", ["A", "B", "C"], "b", "!", ":", "c", "d", "e"]
