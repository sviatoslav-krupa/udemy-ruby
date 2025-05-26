# What is a method:
#   * Grouped collection of Ruby statements that serves a purpose
#   * Methods are designed to be reused. Follow the golden rule DRY (Don't Repeat Yourself)
#   * Methods abstract the complexity (hide the complexity) of solving a problem

# Method definitions and calls:
#   * A method is first defined with a set of Ruby statements
#   * The method is then called or invoked (run, executed)

# Example - convert military time (1630) to standard time (04:30PM):
#   * Isolate first two numbers
#   * If first two numbers are less than or equal to 12, use them as the hour component and identify period as AM
#   * If first two numbers are greater than 12, subtract 12 to get the hour component and identify period as PM
#   * Isolate last two numbers. Use them to determine the minutes component of final result
#   * Concatenate hour component, a colon, the minutes component and the period

# Method calling before method was defined
introduce_myself #=> undefined local variable or method `introduce_myself' for main:Object (NameError)

def introduce_myself
  # Method body
  puts "I am handsome!"
  puts "I am talented!"
  puts "I am brilliant!"
end

# Method calling
introduce_myself
# OUTPUT:
#   I am handsome!
#   I am talented!
#   I am brilliant!

# Reusing a method
introduce_myself()
# OUTPUT:
#   I am handsome!
#   I am talented!
#   I am brilliant!

# Edge cases:
# Indentation is suggested, NOT required!
  def introduce_myself_2
puts "Indentation is suggested, NOT required!"
  end

introduce_myself_2
# OUTPUT:
#   I am handsome!
#   I am talented!
#   I am brilliant!

# Converting a method to an object:
method(:introduce_myself) #=> #<Method: Object#introduce_myself() (irb):1>
