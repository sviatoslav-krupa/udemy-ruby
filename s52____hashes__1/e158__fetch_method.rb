# The .fetch Method on a Hash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482482#overview) is the link to the video.

menu = {
  burger: 3.99,
  taco: 5.96,
  chips: 0.5
}

menu[:taco] #=> 5.96
menu.fetch(:taco) #=> 5.96
menu.fetch(:taco, "Wrong option") #=> 5.96

menu[:salad] #=> nil
menu.fetch(:salad) #=> key not found: :salad (KeyError)
menu.fetch(:salad, "Wrong option") #=> "Wrong option"
menu.fetch(:salad, nil) #=> nil (like `menu[:salad]`)
