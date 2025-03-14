# Notes:
#   * There is no matter how many elements we want to remove and how many elements we need to insert
#   * We just change left elements with right elements
#   * When changing 1 element - inserts elements as nested array
#   * When changing array of elements (even if length is 1) - inserts elements as a regular elements

fruits = %w[Apple Orange Grape Banana]
fruits #=> ["Apple", "Orange", "Grape", "Banana"]

# Change single element
fruits[1] = "Watermelon"
fruits #=> ["Apple", "Watermelon", "Grape", "Banana"]

fruits[-1] = "Bananas"
fruits #=> ["Apple", "Watermelon", "Grape", "Bananas"]

fruits[4] = "Raspberry"
fruits #=> ["Apple", "Watermelon", "Grape", "Banana", "Raspberry"]

fruits[5] = "Strawberry"
fruits #=> ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", "Strawberry"]

# In this case, all elements between last and new value will be nil
fruits[10] = "Kiwi"
fruits #=> ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, nil, nil, nil, nil, "Kiwi"]

fruits[6] = ["Pineapple", "Pear"]
fruits #=> ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, ["Pineapple", "Pear"], nil, nil, nil, "Kiwi"]

fruits[7] = "Strawberry", "Orange"
fruits #=> ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, ["Pineapple", "Pear"], ["Strawberry", "Orange"], nil, nil, "Kiwi"]

# Change multiple elements
fruits[3, 2] = %w[Canteloupe Dragonfruit]
fruits #=> ["Apple", "Watermelon", "Grape", "Canteloupe", "Dragonfruit", nil, nil, nil, nil, nil, "Kiwi"]

fruits[0..2] = %w[Blackberry Orange Pears]
fruits #=> ["Blackberry", "Orange", "Pears", "Canteloupe", "Dragonfruit", nil, nil, nil, nil, nil, "Kiwi"]

fruits[0..3] = ["Blah"]
fruits #=> ["Blah", "Dragonfruit", nil, nil, nil, nil, nil, "Kiwi"]

fruits[2..6] = "New fruit"
fruits #=> ["Blah", "Dragonfruit", "New fruit", "Kiwi"]

fruits[0...2] = "Another new fruit"
fruits #=> ["Another new fruit", "New fruit", "Kiwi"]

fruits[0..1] = "Apple", "Banana"
fruits #=> ["Apple", "Banana", "Kiwi"]

# Edge cases:
# Inserting nested array
fruits[0..1] = [%w[Coconut Mandarin]]
fruits #=> [["Coconut", "Mandarin"], "Kiwi"]

# .values_at method
fruits.values_at(0) = "Orange" #=> syntax error, unexpected '=', expecting end-of-input (SyntaxError)

# One more example
letters = %w[a b c d e f g h]
letters #=> ["a", "b", "c", "d", "e", "f", "g", "h"]

# When changing 1 element
letters[1] = %w[x y z]
letters #=> ["a", ["x", "y", "z"], "c", "d", "e", "f", "g", "h"]

# When changing array of elements (even if length is 1)
letters[3..3] = %w[x y z]
letters #=> ["a", ["x", "y", "z"], "c", "x", "y", "z", "e", "f", "g", "h"]
