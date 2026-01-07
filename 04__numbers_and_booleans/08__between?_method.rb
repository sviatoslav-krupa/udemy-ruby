# Notes:
#   * .between? includes :min and :max values

20.between?(10, 30)     #=> true
20.between? 10, 30      #=> true (parentheses are not required)
5.between?(10, 30)      #=> false
1.2.between?(1.1, 1.5)  #=> true
1.7.between?(1.1, 1.5)  #=> false
1.between?(1, 10)       #=> true (.between includes :min and :max values)
10.between?(1, 10)      #=> true (.between includes :min and :max values)

# Edge cases:
2.between?(1, false)    #=> comparison of Integer with false failed (ArgumentError)
2.between?("qwe", true) #=> comparison of Integer with String failed (ArgumentError)
