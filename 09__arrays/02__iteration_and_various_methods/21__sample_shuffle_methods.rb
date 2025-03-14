# Notes:
#   * .sample - gets random elements from an array
#   * .shuffle - reorders elements

# .sample
flavors = %w[Chocolate Vanilla Strawberry Milk]
flavors.sample                  #=> "Vanilla"
flavors.sample(1)               #=> ["Vanilla"] (array)
flavors.sample(2)               #=> ["Strawberry", "Chocolate"]
flavors.sample(3)               #=> ["Strawberry", "Milk", "Chocolate"]
flavors.sample(4)               #=> ["Milk", "Chocolate", "Strawberry", "Vanilla"] (just random ordering)
flavors.sample(flavors.length)  #=> ["Milk", "Chocolate", "Strawberry", "Vanilla"] (just random ordering)

# .shuffle
flavors.shuffle #=> ["Milk", "Chocolate", "Strawberry", "Vanilla"]

# Edge cases:
flavors.sample(100) #=> ["Milk", "Chocolate", "Strawberry", "Vanilla"] (just random ordering)
flavors.sample(-2)  #=> negative sample number (ArgumentError)
flavors.sample(0)   #=> []
