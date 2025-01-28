# The if Statement
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481570?start=15#overview) is the link to the video.

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
end # => (return nil - the result of last evaluation)

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
