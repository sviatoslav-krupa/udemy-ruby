# Notes:
#   * Bang methods (may include '!' in the end) - has a side effect (modifies, mutates an original object)

word = "hello"
word.capitalize #=> "Hello"
word            #=> "hello"

# The same as `word = word.capitalize`
word.capitalize!
word #=> "Hello"

word.upcase!
word #=> "HELLO"

word.downcase!
word #=> "hello"

word.reverse!
word #=> "olleh"

word.swapcase!
word #=> "OLLEH"
