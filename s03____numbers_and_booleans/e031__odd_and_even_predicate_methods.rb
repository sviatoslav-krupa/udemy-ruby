# The .odd? and .even? Predicate Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477652#overview) is the link to the video.

# .odd? (непарне?)
p 1.odd? # => true
p 2.odd? # => false

# .even? (парне?)
p 1.even? # => false
p 2.even? # => true

# .odd? and .even? called only on Integer
p 4.2.odd? # => undefined method `odd?' for 4.2:Float (NoMethodError)
p "4.2".odd? # =>  undefined method `odd?' for "4.2":String (NoMethodError)

# Edge cases
p 0.odd? # => false
p 0.even? # => true

# Notes
# Predicate methods - return true or false
