# Access Single Array Element by Index Position

# The first element has 0 index

fruits = %w[Apple Orange Grape Banana]

p fruits.length #=> 4
p fruits.size #=> 4
p fruits.count #=> 4

p fruits[0] #=> "Apple"
p fruits[1] #=> "Orange"
p fruits[2] #=> "Grape"
p fruits[3] #=> "Banana"
p fruits[-1] #=> "Banana"
p fruits[fruits.length - 1] #=> "Banana"
p fruits[-2] #=> "Grape"
p fruits[-3] #=> "Orange"

p fruits.[](0) #=> "Apple"
p fruits.[](1) #=> "Orange"

# Edge cases:
p fruits[100] #=> nil
p fruits[-100] #=> nil
p fruits[3.96] #=> "Banana"
p fruits[3.06] #=> "Banana"
p fruits["qwe"] #=> no implicit conversion of String into Integer (TypeError)
