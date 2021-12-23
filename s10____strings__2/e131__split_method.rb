# The .split Method on a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482376#overview) is the link to the video.

# .split - returns an array from string divided by delimiter. Default param is space (` `).
# Delimiter is not included in result arrays

sentence = "Hi, my name is Sviat. There are spaces here!"

p sentence.split # => ["Hi,", "my", "name", "is", "Sviat.", "There", "are", "spaces", "here!"]
p sentence.split(" ") # => ["Hi,", "my", "name", "is", "Sviat.", "There", "are", "spaces", "here!"]
p sentence.split(".") # => ["Hi, my name is Sviat", " There are spaces here!"]
p sentence.split("m") # => ["Hi, ", "y na", "e is Sviat. There are spaces here!"]
p sentence.split(" i") # => ["Hi, my name", "s Sviat. There are spaces here!"]

# To get all characters separately (just pass an empty string)
p sentence.split("") # => ["H", "i", ",", " ", "m", "y", " ", "n", "a", "m", "e", " ", "i", "s", " ", "S", "v", "i", "a", "t", ".", " ", "T", "h", "e", "r", "e", " ", "a", "r", "e", " ", "s", "p", "a", "c", "e", "s", " ", "h", "e", "r", "e", "!"]

# Edge case
p sentence.split(nil) # => ["Hi,", "my", "name", "is", "Sviat.", "There", "are", "spaces", "here!"] (the same as without parameter)
p sentence.split(3) # =>  wrong argument type Integer (expected Regexp) (TypeError)
