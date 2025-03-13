# Notes:
#   * Strings are mutable (can be changed)
#   * Each character in a string has its own index (starting from 0)

#        0 1 2 3 4 5 6 7 8 9    ...    -4 -3 -2 -1
story = "Once upon a time in a land far, far away"

story.length #=> 40

story[3]        #=> "e" (bracket syntax)
story.slice(3)  #=> "e" (.slice method)

story[2]        #=> "c"
story.slice(2)  #=> "c"

story[4]        #=> " "
story.slice(4)  #=> " "

story[-1]       #=> "y" (if negative number - counts from the end)
story.slice(-1) #=> "y" (if negative number - counts from the end)

story[-3]       #=> "w" (if negative number - counts from the end)
story.slice(-3) #=> "w" (if negative number - counts from the end)

# Edge cases:
# If passed index is higher than string length
story[100]        #=> nil
story.slice(100)  #=> nil
story[-100]       #=> nil
story.slice(-100) #=> nil
