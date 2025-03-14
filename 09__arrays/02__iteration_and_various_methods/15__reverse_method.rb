"Hello".reverse                           #=> "olleH"
[1, 2, 3].reverse                         #=> [3, 2, 1]
%w[a b c].reverse                         #=> ["c", "b", "a"]
[true, true, false, false, true].reverse  #=> [true, false, false, true, true]

queue = [4, 8, 15, 16, 23, 42]
queue #=> [4, 8, 15, 16, 23, 42]

queue.reverse #=> [42, 23, 16, 15, 8, 4]
queue #=> [4, 8, 15, 16, 23, 42]

queue.reverse!
queue #=> [42, 23, 16, 15, 8, 4]
