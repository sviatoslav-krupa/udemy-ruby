# The .count Method on a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482382#overview) is the link to the video.

# .count - the number of occurrences in a substring

p "Hello, World!".count("H") # => 1
p "Hello, World!".count("l") # => 3

# Taking each part of param separately, order doesn't matter, case sensitivity matters
p "Hello, World!".count("lo") # => 5 (3 "l" and 2 "o")
p "Hello, World!".count("lW") # => 4
p "Hello, World!".count("Wl") # => 4
p "Hello, World!".count("lw") # => 3

puts "An amazing aadvark appeared".count("Aa") # => 8

# Edge case
puts "Hello, World!".count # => wrong number of arguments (given 0, expected 1+) (ArgumentError)

def custom_count(string, search_characters)
  occurrences = 0
  string.each_char do |char|
    occurrences += 1 if search_characters.include?(char)
  end
  occurrences
end
p custom_count("Hello, World!", "H") # => 1
p custom_count("Hello, World!", "l") # => 3
p custom_count("Hello, World!", "lo") # => 5
p custom_count("Hello, World!", "lW") # => 4
p custom_count("Hello, World!", "Wl") # => 4
p custom_count("Hello, World!", "lw") # => 3
