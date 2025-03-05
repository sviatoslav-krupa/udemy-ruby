# Mixins I - The Comparable Module

# What is a mixin?
# * A mixin is a module that injects additional behaviour into a class.
# * Mixins allow us to mimic inheritance from more than one class.
# * A class that includes a module has access to its methods and constants.
# * Constants and methods mixed into a class do not need to be prefixed with the module name.

# Modules (Mixins) vs Inheritance:
# * Class inheritance should be used for an "is-a" relationship.
#   E.g., Array is a type fo Object, Integer is a type of Numeric.
# * Modules should be used for a "has-a" relationship.
#   E.g., String has a Comparable feature set.

# The method lookup path (.ancestors method shows a full path):
# 1. Modules included with :prepend keyword.
# 2. Class definition.
# 3. Included modules (the order that modules are included in class matters).
#    First of all, Ruby looks at the last module included in the class.
#    If multiple modules mix in methods with the same name, the last modules included in the class will be used first.
# 4. Parent classes.
# 5. Ruby will throw an error if the method is not found in the class, the modules or any superclasses (:method_missing).

# Why mix in modules to classes:
# * Different classes need similar functionalities.
#   E.g. String and Numeric both need `<`, `>`, `==`, ...
#   Neither class can be represented as a subclass of the other.
# * Duplication of methods across classes violates the DRY principle.

class OlympicMedal
  include Comparable

  MEDAL_TYPES = {
    gold: 3,
    silver: 2,
    bronze: 1
  }

  attr_reader :type

  def initialize(type)
    @type = type
  end

  # Need to create spaceship operator method (`<=>`) to tell Ruby how to compare objects
  def <=>(other)
    MEDAL_TYPES[type] <=> MEDAL_TYPES[other.type]
  end
end

gold_medal = OlympicMedal.new(:gold)
silver_medal = OlympicMedal.new(:silver)
bronze_medal = OlympicMedal.new(:bronze)

gold_medal > silver_medal #=> true
gold_medal > bronze_medal #=> true
silver_medal < gold_medal #=> true
silver_medal < bronze_medal #=> false
bronze_medal < silver_medal #=> true
bronze_medal < gold_medal #=> true
bronze_medal > gold_medal #=> false
gold_medal == silver_medal #=> false
gold_medal == bronze_medal #=> false
silver_medal == bronze_medal #=> false
silver_medal.between?(gold_medal, bronze_medal) #=> false
silver_medal.between?(bronze_medal, gold_medal) #=> true
