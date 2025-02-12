# The .index and .rindex Methods on a String

# .index - returns the index of the first occurrence of the given substring.
# .rindex - returns the index of the last occurrence of the given substring.
# Both return nil if not found.
# Second parameter is a start (.index) / end (.rindex) index position for searching. That index position is included in a search.

fact = "I am very handsome"

# .index
fact.index("I") # => 0 (position of "I")
fact.index("h") # => 10 (position of "h")
fact.index("a") # => 2 (position of first "a")
fact.index("z") # => nil
fact.index("am") # => 2
fact.index("a", 0) # => 2
fact.index("a", 5) # => 11 (the first occurrence of "a" after 5 index position)

# .rindex
fact.rindex("I") # => 0 (position of "I")
fact.rindex("h") # => 10 (position of "h")
fact.rindex("a") # => 11 (position of last "a")
fact.rindex("z") # => nil
fact.rindex("am") # => 2
fact.rindex("a", -1) # => 11
fact.rindex("a", 5) # => 2 (the last occurrence of "a" before 5 index position inclusively)

def custom_index(string, substring, limit = 0)
  return nil unless string.include?(substring)

  string_length = string.length
  substring_length = substring.length
  i = limit

  while i < (string_length - substring_length)
    sequence = string[i, substring_length]
    break if sequence == substring
    i += 1
  end

  i
end

custom_index(fact, "I") # => 0
custom_index(fact, "h") # => 10
custom_index(fact, "a") # => 2
custom_index(fact, "z") # => nil
custom_index(fact, "am") # => 2
custom_index(fact, "a", 0) # => 2
custom_index(fact, "a", 5) # => 11
