# The .sample and .shuffle Methods on an Array

# .sample - get random elements from an array
flavors = %w[Chocolate Vanilla Strawberry Milk]
flavors.sample # => "Vanilla"
flavors.sample(1) # => ["Vanilla"] (array)
flavors.sample(2) # => ["Strawberry", "Chocolate"]
flavors.sample(3) # => ["Strawberry", "Milk", "Chocolate"]
flavors.sample(4) # => ["Milk", "Chocolate", "Strawberry", "Vanilla"] (just random ordering)
flavors.sample(flavors.length) # => ["Milk", "Chocolate", "Strawberry", "Vanilla"] (just random ordering)

# Edge case
flavors.sample(100) # => ["Milk", "Chocolate", "Strawberry", "Vanilla"] (just random ordering)
flavors.sample(-2) # => negative sample number (ArgumentError)
flavors.sample(0) # => []

# .shuffle - reorders elements
flavors.shuffle # => ["Milk", "Chocolate", "Strawberry", "Vanilla"]
