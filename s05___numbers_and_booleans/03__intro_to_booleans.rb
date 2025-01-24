# Intro to Booleans

# Notes:
# * Only 2 values: true, false.
# * Class hierarchy: Object -> TrueClass, FalseClass.
# * The term 'bool' - from mathematician George Boole.

p 5 < 10 # => true (statement of truthiness)
p 10 > 12 # => false (statement of truthiness)

handsome = true
p handsome # => true
p handsome.class # => TrueClass

rich = false
p rich # => false
p rich.class # => FalseClass
