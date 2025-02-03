# Bang Methods on Strings

# Bang methods (may include '!' in the end) - has a side effect (modifies, mutates an original object).

word = "hello"
p word.capitalize # => "Hello"
p word # => "hello"

# The same as `word = word.capitalize`
word.capitalize!
p word # => "Hello"

word.upcase!
p word # => "HELLO"

word.downcase!
p word # => "hello"

word.reverse!
p word # => "olleh"

word.swapcase!
p word # => "OLLEH"
