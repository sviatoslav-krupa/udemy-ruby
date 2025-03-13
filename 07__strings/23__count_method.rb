# Notes:
#   * .count - the number of occurrences in a substring
#   * Takes each part of param separately
#   * Order doesn't matter
#   * Case sensitivity matters

"Hello, World!".count("H")  #=> 1
"Hello, World!".count("l")  #=> 3
"Hello, World!".count("lo") #=> 5 (3 "l" and 2 "o")
"Hello, World!".count("lW") #=> 4
"Hello, World!".count("Wl") #=> 4
"Hello, World!".count("lw") #=> 3

"An amazing aadvark appeared".count("Aa") #=> 8

# Edge cases
"Hello, World!".count #=> wrong number of arguments (given 0, expected 1+) (ArgumentError)

def custom_count(string, search_characters)
  occurrences = 0

  string.each_char do |char|
    occurrences += 1 if search_characters.include?(char)
  end

  occurrences
end
custom_count("Hello, World!", "H")  #=> 1
custom_count("Hello, World!", "l")  #=> 3
custom_count("Hello, World!", "lo") #=> 5
custom_count("Hello, World!", "lW") #=> 4
custom_count("Hello, World!", "Wl") #=> 4
custom_count("Hello, World!", "lw") #=> 3
