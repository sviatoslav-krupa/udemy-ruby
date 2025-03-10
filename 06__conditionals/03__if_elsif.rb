color = "Green"
if color == "Red"
  "Red is rad"
elsif color == "Green" # One more condition inside if block
  "Green is great"
elsif color == "Yellow"
  "Yay for yellow"
end #=> Green is great

number = 55
if number < 25
  "That's a low number"
elsif number < 50
  "That's a number in a middle"
elsif number < 75
  "That's a big number"
end #=> That's a big number

another_number = 55
if another_number < 25
  "That's a low number"
elsif true
  "That's a number in a middle" # Exit from if-end block after evaluating the first matching condition
elsif another_number < 75
  "That's a big number" # Will not be evaluated even if condition is true
end #=> That's a number in a middle (returns after evaluating body with condition == true)

# Technically can check non-related conditions
number = 10
color = "Green"

if number < 25
  "First condition is true"
elsif color == "Green"
  "Second condition is true"
end #=> First condition is true
