# Check if Value Exists in a Range with .include? Method or ===
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482026#overview) is the link to the video.

half_alphabet = "a".."m"
numbers = -14..79

# .include?
p half_alphabet.include?("c") # => true
p half_alphabet.include?("z") # => false
p half_alphabet.include?("E") # => false
p numbers.include?(-12) # => true
p numbers.include?(75) # => true
p numbers.include?(100) # => false

# ===
p half_alphabet === "c" # => true
p half_alphabet === "z" # => false
p half_alphabet === "E" # => false
p numbers === -12 # => true
p numbers === 75 # => true
p numbers === 100 # => false

# Edge cases
p ("a".."m").include?("m") # => true
p ("a".."m") === "m" # => true
p "a".."m".include?("m") # => bad value for range (ArgumentError)
p "a".."m" === "m" # => bad value for range (ArgumentError)

p ("a"..."m").include?("m") # => false
p ("a"..."m") === "m" # => false
p "a"..."m".include?("m") # => bad value for range (ArgumentError)
p "a"..."m" === "m" # => bad value for range (ArgumentError)
