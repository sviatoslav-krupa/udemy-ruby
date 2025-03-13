# The .empty? and .nil? Methods on an Array

# .empty? - true if length == 0 (no elements)
p [1, 2, 3].empty? #=> false
p [].empty? #=> true
p [false, false].empty? #=> false
p [nil, nil].empty? #=> false

# nil? - true if object is a NilClass
p [1, 2, 3].nil? #=> false
p [].nil? #=> false
p [false, false].nil? #=> false
p [nil, nil].nil? #=> false
p nil.nil? #=> true

letters = ("a".."j").to_a
p letters #=> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

character = letters[5]
p character #=> "f"
p character.nil? #=> false

character = letters[25]
p character #=> nil
p character.nil? #=> true
