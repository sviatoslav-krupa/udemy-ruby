# The .superclass and .ancestors Methods on a Class
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482602#search) is the link to the video.

# The .class method on Objects
# * Objects receive their structure or design from classes.
# * The .class method returns the class the object was constructed from.
# * The object's class is itself another object.

# The .superclass method on Classes
# * A superclass is the class that a current class inherits from. Inheritance follows an "is-a" structure.
# * The .superclass method is called on a class. It returns the parent class that the current class inherits from.
# * The class that inherits from the superclass is called the subclass.
# * Every class in Ruby (except BasicObject at the top of the hierarchy) has at least one superclass.

Integer.superclass #=> Numeric
Float.superclass #=> Numeric
NilClass.superclass #=> Object
TrueClass.superclass #=> Object
String.superclass #=> Object

Integer.superclass #=> Numeric
Integer.superclass.superclass #=> Object
Integer.superclass.superclass.superclass #=> BasicObject

# The .ancestors method on Classes
# * Returns an array of all superclasses and modules.

Integer.ancestors #=> [Integer, Numeric, Comparable, Object, PP::ObjectMixin, Kernel, BasicObject]
Float.ancestors #=> [Float, Numeric, Comparable, Object, PP::ObjectMixin, Kernel, BasicObject]
String.ancestors #=> [String, Comparable, Object, PP::ObjectMixin, Kernel, BasicObject]
NilClass.ancestors #=> [NilClass, Object, PP::ObjectMixin, Kernel, BasicObject]
TrueClass.ancestors #=> [TrueClass, Object, PP::ObjectMixin, Kernel, BasicObject]

# Edge cases:
5.superclass #=> undefined method `superclass' for 5:Integer (NoMethodError)
5.ancestors #=> undefined method `ancestors' for 5:Integer (NoMethodError)
