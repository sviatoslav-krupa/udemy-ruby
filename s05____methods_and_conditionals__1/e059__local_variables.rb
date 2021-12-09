# Local Variables
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481556#overview) is the link to the video.

# Local variable - exists in a specific environment

expression = "I'm handsome"

def introduce_myself
  expression = "I'm a genius"
  another_expression = "I'm Sviat"

  puts another_expression
  puts expression
end

introduce_myself
=begin
I'm a genius
I'm Sviat
=end

puts expression # => I'm handsome

# expression is a local variable in :introduce_myself method
puts another_expression # => undefined local variable or method `another_expression' for main:Object (NameError)
