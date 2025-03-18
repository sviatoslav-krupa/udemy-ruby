menu = {
  burger: 3.99,
  taco: 5.96,
  chips: 0.5
}

menu[:burger]   #=> 3.99
menu[:sandwich] #=> nil

# Adding new key-value pair
menu[:sandwich] = 8.99
menu #=> {burger: 3.99, taco: 5.96, chips: 0.5, sandwich: 8.99}

menu.store(:sushi, 10.5)
menu #=> {burger: 3.99, taco: 5.96, chips: 0.5, sandwich: 8.99, sushi: 10.5}

# Overriding value for existing key-value pair
menu[:taco] = 2.99
menu #=> {burger: 3.99, taco: 2.99, chips: 0.5, sandwich: 8.99, sushi: 10.5}

menu.store(:sushi, 20.5)
menu #=> {burger: 3.99, taco: 2.99, chips: 0.5, sandwich: 8.99, sushi: 20.5}

# Edge cases:
menu["burger"] = 4.99
menu #=> {burger: 3.99, taco: 2.99, chips: 0.5, sandwich: 8.99, sushi: 20, "burger" => 4.99}

menu.store("taco", 6.99)
menu #=> {burger: 3.99, taco: 2.99, chips: 0.5, sandwich: 8.99, sushi: 20, "burger" => 4.99, "taco" => 6.99}
