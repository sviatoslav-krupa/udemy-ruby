# Ternary Operator

# Syntax:
# condition ? execute if true : execute if false

if 1 < 2
  puts "Yes, it is"
else
  "No, it is not"
end # => Yes, it is
puts 1 < 2 ? "Yes, it is" : "No, it is not" # => Yes, it is


if "No".downcase == "yes"
  puts "The two are equal"
else
  puts "The two are not equal"
end # => The two are not equal
puts "No".downcase == "yes" ? "The two are equal" : "The two are not equal" # => The two are not equal

def even_or_odd(number)
  # Implicit return here
  number.even? ? "That number is even" : "That number is odd"
end
p even_or_odd(3) # => "That number is odd"
p even_or_odd(2) # => "That number is even"

pokemon = "Pikachu"
if pokemon == "Charizard"
  puts "Fireball!"
else
  puts "That is not Charizard!"
end # => That is not Charizard!
pokemon == "Charizard" ? puts "Fireball!" : puts "That is not Charizard!" # => syntax error, unexpected ':', expecting end-of-input
pokemon == "Charizard" ? puts("Fireball!") : puts("That is not Charizard!") # => That is not Charizard!
puts pokemon == "Charizard" ? "Fireball!" : "That is not Charizard!" # => That is not Charizard!