# The Backslash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482588#search) is the link to the video.

# `\` - backslash

paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."

paragraph.scan(/./) #=> ["T", "h", "i", ..., "5", "."]
paragraph.scan(/\./) #=> [".", ".", "."]

paragraph.scan(/d/) #=> ["d"]

# \d - any digit
paragraph.scan(/\d/) #=> ["5", "5"]

# \D - any non-digit
paragraph.scan(/\D/) #=> ["5", "5"] #=> ["T", "h", "i", "s", " ", "i", "s", " ", "m", "y", " ", "e", "s", "s", "a", "y", ".", " ", "I", " ", "d", "e", "s", "e", "r", "v", "e", " ", "a", "n", " ", "A", ".", " ", "I", " ", "r", "a", "n", "k", " ", "i", "t", " ", "a", " ", " ", "o", "u", "t", " ", "o", "f", " ", "."]

# \s - any spaces
paragraph.scan(/\s/) #=> [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]

# \s+ - one or more occurrences of space
paragraph.scan(/\s+/) #=> [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]

# \S - any non-space character
paragraph.scan(/\S/) #=> ["T", "h", "i", "s", "i", "s", "m", "y", "e", "s", "s", "a", "y", ".", "I", "d", "e", "s", "e", "r", "v", "e", "a", "n", "A", ".", "I", "r", "a", "n", "k", "i", "t", "a", "5", "o", "u", "t", "o", "f", "5", "."]
