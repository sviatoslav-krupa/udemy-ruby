# What is a conditional:
#   * Statement that controls if a piece of code executes.
#   * Evaluates to a Boolean: true or false.
#   * If the condition is met, the code executes. Otherwise, it is skipped.


# Syntax:
#   if condition
#     # Code to execute if condition == true
#   end

if 5 < 7
  # Body of if statement

  puts "That math statement is true"
end #=> nil (the result of last evaluation)
# OUTPUT:
#   That math statement is true

if 5 < 2
  puts "That math statement is true"
end #=> nil (if condition is false)

if 5.odd?
  p "The number is indeed odd"
end #=> "The number is indeed odd"
# OUTPUT:
#   The number is indeed odd

password = "topsecret"
if password == "topsecret"
  "Congrats, you've logged into our system!"
end #=> "Congrats, you've logged into our system!"

word = "kangaroo"
if word.length == 8
  "That word has 8 letters!"
end #=> "That word has 8 letters!"

word = "zebra"
if word.include?("eb")
  "Yep, your word has eb in it!"
end #=> "Yep, your word has eb in it!"
