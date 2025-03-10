# Check if Value Exists in a Range with .include?, .member? or ===

half_alphabet = "a".."m"
numbers = -14..79

# .include?
p half_alphabet.include?("c") # => true
p half_alphabet.include?("z") # => false
p half_alphabet.include?("E") # => false
p numbers.include?(-12) # => true
p numbers.include?(75) # => true
p numbers.include?(100) # => false

# .member?
p half_alphabet.member?("c") # => true
p half_alphabet.member?("z") # => false
p half_alphabet.member?("E") # => false
p numbers.member?(-12) # => true
p numbers.member?(75) # => true
p numbers.member?(100) # => false

# ===
p half_alphabet === "c" # => true
p half_alphabet === "z" # => false
p half_alphabet === "E" # => false
p numbers === -12 # => true
p numbers === 75 # => true
p numbers === 100 # => false


# Edge cases:
p (14.2..20.7).include?(15) # => true
p (14.2..20.7).include?(15.7) # => true
p (14.2..20.7).include?(20.7) # => true
p (14.2..20.7).include?(20.8) # => false

p ("a".."m").include?("m") # => true
p ("a".."m") === "m" # => true
p "a".."m".include?("m") # => bad value for range (ArgumentError)
p "a".."m" === "m" # => bad value for range (ArgumentError)

p ("a"..."m").include?("m") # => false
p ("a"..."m") === "m" # => false
p "a"..."m".include?("m") # => bad value for range (ArgumentError)
p "a"..."m" === "m" # => bad value for range (ArgumentError)
