# Notes:
#   * Predicate methods - return true or false (simply ask the object a question about itself).
#   * Best practice to end a name of predicate method with `?` symbol (no technically required).

# .odd? (непарне?)
1.odd? #=> true
2.odd? #=> false

# .even? (парне?)
1.even? #=> false
2.even? #=> true

# .odd? and .even? called only on Integer
4.2.odd?    #=> undefined method 'odd?' for an instance of Float (NoMethodError)
"4.2".odd?  #=> undefined method 'odd?' for an instance of String (NoMethodError)

# Edge cases:
0.odd?  #=> false
0.even? #=> true
