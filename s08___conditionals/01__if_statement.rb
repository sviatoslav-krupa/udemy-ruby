# The if Statement

# What is a conditional:
# * Statement that controls if a piece of code executes.
# * Evaluates to a Boolean: true or false.
# * If the condition is met, the code executes. Otherwise, it is skipped.

=begin
Syntax

if condition
  # Code to execute if condition == true
end

=end

if 5 < 7
  # Body of if statement

  puts "That math statement is true"
end # => That math statement is true (returns nil - the result of last evaluation)

if 5 < 2
  puts "That math statement is true"
end # => (return nil - if condition if false)

if 5.odd?
  p "The number is indeed odd"
end # => The number is indeed odd (returns "The number is indeed odd" - the result of last evaluation in matching condition)

password = "topsecret"
if password == "topsecret"
  puts "Congrats, you've logged into our system!"
end # => Congrats, you've logged into our system!

word = "kangaroo"
if word.length == 8
  puts "That word has 8 letters!"
end # => That word has 8 letters!

word = "zebra"
if word.include?("eb")
  puts "Yep, your word has eb in it!"
end # => Yep, your word has eb in it!
