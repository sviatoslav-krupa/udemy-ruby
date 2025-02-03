# Extract Multiple Characters with Range Objects

# Range - sequence of numbers in order
# a..b - b included
# a...b - b excluded

story = "Once upon a time in a land far, far away"

p story.length # => 40

# Gets substring from 27 index to 40 index inclusively (39 index will be included)
# 27..39 is a range
p story[27..39] # => "far, far away"
p story.slice(27..39) # => "far, far away"

# 39 index is excluded
p story[27...39] # => "far, far awa"
p story.slice(27...39) # => "far, far awa"

# Edge cases
p story[32..100] # => "far away" (just ends in a last character)
p story[0..-40] # => "O"
p story[0...-40] # => ""
p story[0..-50] # => "" (just empty string)
p story[-50..3] # => nil (cause story[-50] == nil)
