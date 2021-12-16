# Overwrite One or More Array Elements
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482134#overview) is the link to the video.

# There is no matter how many elements we want to remove and how many elements we need to insert.
# fruits[1, 4] = ["Apple", "Banana"]
# We just change left elements with right elements.

# For inserting nested array:
# * when remove 2 or more elements - we need to write nested array in the right side.
# * when remove 1 element - we don't need to write nested array in the right side.

fruits = %w[Apple Orange Grape Banana]
p fruits # => ["Apple", "Orange", "Grape", "Banana"]


# Change single element
fruits[1] = "Watermelon"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana"]

fruits[-1] = "Bananas"
p fruits # => ["Apple", "Watermelon", "Grape", "Bananas"]

fruits[4] = "Raspberry"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry"]

fruits[5] = "Strawberry"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", "Strawberry"]

# In this case all elements between last and new value will be nil
fruits[10] = "Kiwi"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, nil, nil, nil, nil, "Kiwi"]


# Change multiple elements
fruits[3, 2] = %w[Canteloupe Dragonfruit]
p fruits # => ["Apple", "Watermelon", "Grape", "Canteloupe", "Dragonfruit", nil, nil, nil, nil, nil, "Kiwi"]

fruits[0..2] = %w[Blackberry Orange Pears]
p fruits # => ["Blackberry", "Orange", "Pears", "Canteloupe", "Dragonfruit", nil, nil, nil, nil, nil, "Kiwi"]

fruits[0..3] = ["Blah"]
p fruits # => ["Blah", "Dragonfruit", nil, nil, nil, nil, nil, "Kiwi"]

fruits[2..6] = "New fruit"
p fruits # => ["Blah", "Dragonfruit", "New fruit", "Kiwi"]

fruits[0...2] = "Another new fruit"
p fruits # => ["Another new fruit", "New fruit", "Kiwi"]

fruits[0..1] = "Apple", "Banana"
p fruits # => ["Apple", "Banana", "Kiwi"]

# Edge cases

# Inserting nested array:
fruits[0..1] = [%w[Coconut Mandarin]]
p fruits # => [["Coconut", "Mandarin"], "Kiwi"]

fruits[-1] = "Apple", "Orange"
p fruits # => [["Coconut", "Mandarin"], ["Apple", "Orange"]]

# .values_at method
fruits.values_at(0) = "Orange" # => syntax error, unexpected '=', expecting end-of-input (SyntaxError)
