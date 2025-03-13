story = "Once upon a time in a land far, far away"

story.length #=> 40

# Get 4 characters starting from 5 index
story[5, 4]       #=> "upon"
story.slice(5, 4) #=> "upon"

story[0, 5]       #=> "Once "
story.slice(0, 5) #=> "Once "

story[0, story.length]        #=> "Once upon a time in a land far, far away"
story.slice(0, story.length)  #=> "Once upon a time in a land far, far away"

# Edge cases:
story[-4, 4]    #=> "away"
story[-4, 100]  #=> "away" (just ends in a last character)
story[3, -1]    #=> nil
story[100, 200] #=> nil
