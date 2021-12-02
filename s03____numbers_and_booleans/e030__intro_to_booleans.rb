# Intro to Booleans
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477650#overview) is the link to the video.

# Notes:
# * Only 2 values: true, false.
# * Class hierarchy: Object -> TrueClass, FalseClass.

p 5 < 10 # => true (statement of truthiness)
p 10 > 12 # => false (statement of truthiness)

handsome = true
p handsome # => true
p handsome.class # => TrueClass

rich = false
p rich # => false
p rich.class # => FalseClass
