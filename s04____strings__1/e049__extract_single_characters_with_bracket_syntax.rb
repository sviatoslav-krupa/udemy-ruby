# Extract Single Characters from String with Bracket Syntax
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481496#overview) is the link to the video.

# Strings are mutable (can be changed)
# Each character in a string has it's own index (starting from 0)

#        0 1 2 3 4 5 6 7 8 9    ...    -4 -3 -2 -1
story = "Once upon a time in a land far, far away"

p story.length # => 40

p story[3] # => "e" (bracket syntax)
p story.slice(3) # => "e" (.slice method)

p story[2] # => "c"
p story.slice(2) # => "c"

p story[4] # => " "
p story.slice(4) # => " "

p story[-1] # => "y" (if negative number - counts from the end)
p story.slice(-1) # => "y" (if negative number - counts from the end)

p story[-3] # => "w" (if negative number - counts from the end)
p story.slice(-3) # => "w" (if negative number - counts from the end)

# Edge cases

# If passed index is higher than string length
p story[100] # => nil
p story.slice(100) # => nil

p story[-100] # => nil
p story.slice(-100) # => nil
