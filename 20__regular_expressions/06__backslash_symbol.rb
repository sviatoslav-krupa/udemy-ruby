# Notes:
#   * `\` - backslash
#   * `\d` - any digit
#   * `\D` - any non-digit
#   * `\s` - any spaces
#   * `\s+` - one or more occurrences of space
#   * `\S` - any non-space character

paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."

paragraph.scan(/./)   #=> ["T", "h", "i", ..., "5", "."]
paragraph.scan(/\./)  #=> [".", ".", "."]
paragraph.scan(/d/)   #=> ["d"]
paragraph.scan(/\d/)  #=> ["5", "5"]
paragraph.scan(/\D/)  #=> ["T", "h", "i", "s", " ", "i", "s", " ", "m", "y", " ", "e", "s", "s", "a", "y", ".", " ", "I", " ", "d", "e", "s", "e", "r", "v", "e", " ", "a", "n", " ", "A", ".", " ", "I", " ", "r", "a", "n", "k", " ", "i", "t", " ", "a", " ", " ", "o", "u", "t", " ", "o", "f", " ", "."]
paragraph.scan(/\s/)  #=> [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
paragraph.scan(/\s+/) #=> [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
paragraph.scan(/\S/)  #=> ["T", "h", "i", "s", "i", "s", "m", "y", "e", "s", "s", "a", "y", ".", "I", "d", "e", "s", "e", "r", "v", "e", "a", "n", "A", ".", "I", "r", "a", "n", "k", "i", "t", "a", "5", "o", "u", "t", "o", "f", "5", "."]
