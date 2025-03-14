# Notes:
#   * .empty? - true if length == 0 (no elements)
#   * .nil? - true if object is a NilClass

# empty?
[1, 2, 3].empty?      #=> false
[].empty?             #=> true
[false, false].empty? #=> false
[nil, nil].empty?     #=> false

# nil?
[1, 2, 3].nil?      #=> false
[].nil?             #=> false
[false, false].nil? #=> false
[nil, nil].nil?     #=> false
nil.nil?            #=> true

letters = ("a".."j").to_a
letters #=> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

character = letters[5]
character       #=> "f"
character.nil?  #=> false

character = letters[25]
character       #=> nil
character.nil?  #=> true
