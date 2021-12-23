# The .index and .rindex Methods on a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482384#overview) is the link to the video.

# .index - returns the index of the first occurrence of the given substring.
# .rindex - returns the index of the last occurrence of the given substring.
# Both return nil if not found.
# Second parameter is a start (.index) / end (.rindex) index position for searching. That index position is included in a search.

fact = "I am very handsome"

# .index
p fact.index("I") # => 0 (position of "I")
p fact.index("h") # => 10 (position of "h")
p fact.index("a") # => 2 (position of first "a")
p fact.index("z") # => nil
p fact.index("am") # => 2
p fact.index("a", 0) # => 2
p fact.index("a", 5) # => 11 (the first occurrence of "a" after 5 index position)

# .rindex
p fact.rindex("I") # => 0 (position of "I")
p fact.rindex("h") # => 10 (position of "h")
p fact.rindex("a") # => 11 (position of last "a")
p fact.rindex("z") # => nil
p fact.rindex("am") # => 2
p fact.rindex("a", -1) # => 11
p fact.rindex("a", 5) # => 2 (the last occurrence of "a" before 5 index position inclusively)

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
p custom_index(fact, "I") # => 0
p custom_index(fact, "h") # => 10
p custom_index(fact, "a") # => 2
p custom_index(fact, "z") # => nil
p custom_index(fact, "am") # => 2
p custom_index(fact, "a", 0) # => 2
p custom_index(fact, "a", 5) # => 11
