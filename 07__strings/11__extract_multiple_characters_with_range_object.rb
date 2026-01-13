# Notes:
#   * Range - sequence of numbers in order
#   * a..b - b included
#   * a...b - b excluded

story = "Once upon a time in a land far, far away"

story.length #=> 40

# Gets substring from 27 index to 39 index inclusively (39 index will be included; 27..39 is a range)
story[27..39]       #=> "far, far away"
story.slice(27..39) #=> "far, far away"

# 39 index is excluded
story[27...39]        #=> "far, far awa"
story.slice(27...39)  #=> "far, far awa"

# Edge cases:
story[32..100]  #=> "far away" (just ends in a last character)
story[0..-40]   #=> "O"
story[0...-40]  #=> ""
story[0..-50]   #=> "" (just empty string)
story[-50..3]   #=> nil (cause story[-50] == nil)
