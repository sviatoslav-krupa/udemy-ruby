# The .is_a? Predicate Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482160#overview) is the link to the video.

# .is_a? - checks if an object is from specific class.
# It checks also parent classes and modules, check with `class.ancestors` method (e.g. Integer.ancestors).
# Class hierarchy: BasicObject -> Object ...

p 1.class # => Integer
p 3.14.class # => Float
p true.class # => TrueClass
p false.class # => FalseClass
p nil.class # => NilClass
p [1, 2, 3].class # => Array

p 1.is_a?(Integer) # => true
p 1.is_a?(TrueClass) # => false
p [1, 2].is_a?(Array) # => true
p [1, 2].is_a?(TrueClass) # => false

# Edge cases
p 1.is_a?(Object) # => true
p 1.is_a?(Kernel) # => true
p 1.is_a?(BasicObject) # => true
