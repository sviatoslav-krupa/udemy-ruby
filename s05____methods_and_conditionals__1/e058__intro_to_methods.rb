# Intro to Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481542#overview) is the link to the video.

# What is a method:
# * Grouped collection of Ruby statements that serves a purpose.
# * Methods are designed to be reused. Follow the golder rule DRY (Don't Repeat Yourself).
# * Methods abstract the complexity (hide the complexity) of solving a problem.

# Example - convert military time (1630) to standard time (04:30PM)
# * Isolate first two numbers.
# * If first two numbers are less than or equal to 12, use them as the hour component and identify period as AM.
# * If first two numbers are greater than 12, subtract 12 to get the hour component and identify period as PM.
# * Isolate last two numbers. Use them to determine the minutes component of final result.
# * Concatenate hour component, a colon, the minutes component and the period.

# Method definitions and calls:
# * A method is first defined with a set of Ruby statements.
# * The method is then called or invoked (run, executed).

# Method calling before method was defined
introduce_myself # => undefined local variable or method `introduce_myself' for main:Object (NameError)
=begin
I am handsome!
I am talented!
I am brilliant!
=end

def introduce_myself
  # Method body

  puts "I am handsome!"
  puts "I am talented!"
  puts "I am brilliant!"
end

# Method calling
introduce_myself
=begin
I am handsome!
I am talented!
I am brilliant!
=end

# Reusing a method
introduce_myself()
=begin
I am handsome!
I am talented!
I am brilliant!
=end
