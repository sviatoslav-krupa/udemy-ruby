# Introduction to Blocks with the .times Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477670#overview) is the link to the video.

# Block is grouped collection of ruby statements that immediately follows a method call
# Block is not an object and not a method. It's like an add-on to a method call that clarifies how the method should operate
# Block cannot exists without a method context
# Block add more detail to a method, it's attached to a method

# Do 5 times something that in an attached block
# .times is a method
# { ... } and do .. end are blocks

# { ... } for one line
5.times { puts "Hello, World!" }

# do ... end for multiple lines
5.times do
  puts "Hello, World!"
  puts "This is a block."
end

# Block can include block variable
# Block variable is a temporary variable that represents something in context of block's execution
# We have access to the variable only in a block
# Name of a block variable can be different

# count is a block variable, starts from 0 to 4
5.times { |count| puts "#{count}. Hello, World!" }

5.times do |count|
  puts "Loop #{count}"
  puts "Hello, World!"
  puts "This is a block."
end

puts count # => undefined local variable or method `count' for main:Object (NameError)
