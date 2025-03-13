lowercase_alphabet = "a".."z"
lowercase_alphabet.first(5) #=> ["a", "b", "c", "d", "e"]
lowercase_alphabet.last(8)  #=> ["s", "t", "u", "v", "w", "x", "y", "z"]

uppercase_alphabet = "A".."Z"
uppercase_alphabet.first(5) #=> ["A", "B", "C", "D", "E"]
uppercase_alphabet.last(8)  #=> ["S", "T", "U", "V", "W", "X", "Y", "Z"]

all_cases_alphabet = "A".."z"
all_cases_alphabet.first(40) #=> ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h"]
