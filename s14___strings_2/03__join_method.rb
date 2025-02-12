# The .join Method on an Array

# .join - called on Array and returns String combined from Array elements. Can specify delimiter.
# Opposite to .split

names = %w[Joe Moe Bob]

p names.join # => "JoeMoeBob"
p names.join("") # => "JoeMoeBob"
p names.join(nil) # => "JoeMoeBob"
p names.join(" ") # => "Joe Moe Bob"
p names.join(" - ") # => "Joe - Moe - Bob

p %w[h e l l o].join # => "hello"

# Edge cases
p names.join(" - ", 1) # => wrong number of arguments (given 2, expected 0..1) (ArgumentError)
p ["qwe", 1, 4, true, nil, "hello", 3.14, [], [1, 3], {}].join # => "qwe14truehello3.1413{}"

def custom_join(strings, delimiter)
  result = ""

  strings.each_with_index do |string, index|
    result << string
    result << delimiter if index != strings.length - 1
  end

  result
end

p custom_join(names) # => "JoeMoeBob"
p custom_join(names, " ") # => "Joe Moe Bob"
p custom_join(names, " - ") # => "Joe - Moe - Bob
