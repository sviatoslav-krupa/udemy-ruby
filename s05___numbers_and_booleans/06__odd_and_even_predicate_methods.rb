# The .odd? and .even? Predicate Methods

# Notes:
# * Predicate methods - return true or false (simply ask the object a question about itself).
# * Best practice to end a name of predicate method with `?` symbol (no technically required).

# .odd? (непарне?)
p 1.odd? # => true
p 2.odd? # => false

# .even? (парне?)
p 1.even? # => false
p 2.even? # => true

# .odd? and .even? called only on Integer
p 4.2.odd? # => undefined method 'odd?' for an instance of Float (NoMethodError)
p "4.2".odd? # => undefined method 'odd?' for an instance of String (NoMethodError)

# Edge cases
p 0.odd? # => false
p 0.even? # => true
