# The .fetch Method on a Hash

menu = {
  burger: 3.99,
  taco: 5.96,
  chips: 0.5
}

menu[:taco] # => 5.96
menu.fetch(:taco) # => 5.96
menu.fetch(:taco, "Wrong option") # => 5.96

menu[:salad] # => nil
menu.fetch(:salad) # => key not found: :salad (KeyError)
menu.fetch(:salad, "Wrong option") # => "Wrong option"
menu.fetch(:salad, nil) # => nil (like `menu[:salad]`)
