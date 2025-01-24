# Extract Multiple Characters from String with Bracket Syntax
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481502#overview) is the link to the video.

story = "Once upon a time in a land far, far away"

p story.length # => 40

# Get 4 characters starting from 5 index
p story[5, 4] # => "upon"
p story.slice(5, 4) # => "upon"

p story[0, 5] # => "Once "
p story.slice(0, 5) # => "Once "

p story[0, story.length] # => "Once upon a time in a land far, far away"
p story.slice(0, story.length) # => "Once upon a time in a land far, far away"

# Edge cases
p story[-4, 4] # => "away"
p story[-4, 100] # => "away" (just ends in a last character)
p story[3, -1] # => nil
p story[100, 200] # => nil
