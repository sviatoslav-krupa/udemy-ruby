# Add a Key Value Pair to a Hash with Bracket Syntax or the .store Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482484#overview) is the link to the video.

menu = {
  burger: 3.99,
  taco: 5.96,
  chips: 0.5
}

menu[:burger] #=> 3.99
menu[:sandwich] #=> nil

# Adding new key-value pair
menu[:sandwich] = 8.99
menu #=> {:burger=>3.99, :taco=>5.96, :chips=>0.5, :sandwich=>8.99}

menu.store(:sushi, 10.5)
menu #=> {:burger=>3.99, :taco=>5.96, :chips=>0.5, :sandwich=>8.99, :sushi=>10.5}

# Overriding value for existing key-value pair
menu[:taco] = 2.99
menu #=> {:burger=>3.99, :taco=>2.99, :chips=>0.5, :sandwich=>8.99, :sushi=>10.5}
