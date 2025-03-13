# Notes:
#   * It works the same as with String or Array

story = "Once upon a time in a land far, far away..."

story[27..39]       #=> "far, far away"
story.slice(27..39) #=> "far, far away"

story[27...39]        #=> "far, far awa"
story.slice(27...39)  #=> "far, far awa"

story[27..200]        #=> "far, far away..."
story.slice(27..200)  #=> "far, far away..."

story[32..-9]       #=> "far"
story.slice(32..-9) #=> "far"

story[32...-9]        #=> "fa"
story.slice(32...-9)  #=> "fa"

# Overwriting
story[12..15] = "season"
story #=> "Once upon a season in a land far, far away..."

numbers = [1, 3, 5, 7, 9, 15, 21, 18, 6]

numbers[4..6]       #=> [9, 15, 21]
numbers.slice(4..6) #=> [9, 15, 21]

numbers[4...6]        #=> [9, 15]
numbers.slice(4...6)  #=> [9, 15]
