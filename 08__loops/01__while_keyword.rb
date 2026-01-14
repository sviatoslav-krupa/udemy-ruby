# Notes:
#   * loop - repeating over and over
#   * while - when we don't know how many iteration needs
#   * infinite loop - when loop doesn't end (infinity)

i = 1
while i < 10
  # Evaluates body of a loop til condition is true
  puts i
  i += 1
end #=> nil
# OUTPUT:
#   1
#   2
#   3
#   4
#   5
#   6
#   7
#   8
#   9
i #=> 10

# Inline syntax
(puts i; i += 1) while i < 10 #=> nil
# OUTPUT:
#   1
#   2
#   3
#   4
#   5
#   6
#   7
#   8
#   9

status = true
while status
  print "Please, enter username: "
  username = gets.chomp.downcase

  print "Please, enter password: "
  password = gets.chomp.downcase

  if username == "sviat" && password == "bestpasswordever"
    puts "Entry granted!"
    status = false
  elsif username == "quit" || password == "quit"
    puts "Goodbye!"
    status = false
  else
    puts "Incorrect combination! Try again ot enter 'quit'"
  end
end
