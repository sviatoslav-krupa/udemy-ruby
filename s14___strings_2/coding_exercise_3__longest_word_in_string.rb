# Coding Exercise 3: Longest word in a string

def longest_word(sentence)
  sentence_arr = sentence.split
  max_length_word = sentence_arr.first
  i = 1

  while i < sentence_arr.length
    current_word = sentence_arr[i]
    max_length_word = current_word if current_word.length >= max_length_word.length
    i += 1
  end

  max_length_word
end

p longest_word("Bobby loves big scary kangaroos") # => "kangaroos"
p longest_word("Ruby is my favorite language") # => "language"
