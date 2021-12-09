# if elsif
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481582#overview) is the link to the video.

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
  puts "That's a number in a middle"
elsif another_number < 75
  puts "That's a big number"
end # => That's a number in a middle (returns after evaluating body with condition == true)
