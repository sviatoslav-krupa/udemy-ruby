# Notes:
#   * The first element has 0 index

fruits = %w[Apple Orange Grape Banana]

fruits.length #=> 4
fruits.size   #=> 4
fruits.count  #=> 4

fruits[0]                 #=> "Apple"
fruits[1]                 #=> "Orange"
fruits[2]                 #=> "Grape"
fruits[3]                 #=> "Banana"
fruits[-1]                #=> "Banana"
fruits[fruits.length - 1] #=> "Banana"
fruits[-2]                #=> "Grape"
fruits[-3]                #=> "Orange"

fruits.[](0) #=> "Apple"
fruits.[](1) #=> "Orange"

# Edge cases:
fruits[100]   #=> nil
fruits[-100]  #=> nil
fruits[3.96]  #=> "Banana"
fruits[3.06]  #=> "Banana"
fruits["qwe"] #=> no implicit conversion of String into Integer (TypeError)
