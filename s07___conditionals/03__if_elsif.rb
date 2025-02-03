# if elsif

color = "Green"
if color == "Red"
  puts "Red is rad"
elsif color == "Green" # One more condition inside if block
  puts "Green is great"
elsif color == "Yellow"
  puts "Yay for yellow"
end # => Green is great

number = 55
if number < 25
  puts "That's a low number"
elsif number < 50
  puts "That's a number in a middle"
elsif number < 75
  puts "That's a big number"
end # => That's a big number

another_number = 55
if another_number < 25
  puts "That's a low number"
elsif true
  puts "That's a number in a middle" # Exit from if-end block after evaluating the first matching condition
elsif another_number < 75
  puts "That's a big number" # Will not be evaluated even if condition is true
end # => That's a number in a middle (returns after evaluating body with condition == true)

# Technically can check non-related conditions
number = 10
color = "Green"

if number < 25
  puts "First condition is true"
elsif color == "Green"
  puts "Second condition is true"
end # => First condition is true
