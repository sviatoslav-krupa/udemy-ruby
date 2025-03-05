# The .class method on objects
# * Objects receive their structure or design from classes.
# * The .class method returns the class the object was constructed from.
# * The object's class is itself another object.

# The .superclass method on classes
# * A superclass is the class that a current class inherits from. Inheritance follows an "is-a" structure.
# * The .superclass method is called on a class. It returns the parent class that the current class inherits from.
# * The class that inherits from the superclass is called the subclass.
# * Every class in Ruby (except BasicObject at the top of the hierarchy) has at least one superclass.

Integer.superclass #=> Numeric
Float.superclass #=> Numeric
NilClass.superclass #=> Object
TrueClass.superclass #=> Object
String.superclass #=> Object
BasicObject.superclass #=> nil

Integer.superclass #=> Numeric
Integer.superclass.superclass #=> Object
Integer.superclass.superclass.superclass #=> BasicObject

# The .ancestors method on classes
# * Returns an array of all superclasses and modules.

Integer.ancestors #=> [Integer, JSON::Ext::Generator::GeneratorMethods::Integer, Numeric, Comparable, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
Float.ancestors #=> [Float, JSON::Ext::Generator::GeneratorMethods::Float, Numeric, Comparable, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
String.ancestors #=> [String, JSON::Ext::Generator::GeneratorMethods::String, Comparable, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
NilClass.ancestors #=> [NilClass, JSON::Ext::Generator::GeneratorMethods::NilClass, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
TrueClass.ancestors #=> [TrueClass, JSON::Ext::Generator::GeneratorMethods::TrueClass, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
BasicObject.ancestors #=> [BasicObject]

# Edge cases:
5.superclass #=> undefined method `superclass' for 5:Integer (NoMethodError)
5.ancestors #=> undefined method `ancestors' for 5:Integer (NoMethodError)
