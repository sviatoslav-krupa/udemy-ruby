# Notes:
#   * Block is grouped collection of ruby statements that immediately follows a method call
#   * Block is not an object and not a method. It's like an add-on to a method call that clarifies how the method should operate
#   * Block cannot exist without a method context
#   * Block add more details to a method, it's attached to a method
#   * Block can include block variable
#   * Block variable is a temporary variable that represents something in context of block's execution
#   * We have access to the variable only in a block
#   * Name of a block variable can be different

# Docs:
#   * https://ruby-doc.org/core-3.1.0/Integer.html#method-i-times

# Do 5 times something that in an attached block
# `.times` is a method, `{ ... }` and `do .. end` are blocks

# { ... } for one line
5.times { puts "Hello, World!" } #=> 5 (return value of the .times method is the integer itself)
# OUTPUT:
#   Hello, World!
#   Hello, World!
#   Hello, World!
#   Hello, World!
#   Hello, World!

# do ... end for multiple lines
5.times do
  puts "Hello, World!"
  puts "This is a block."
end #=> 5 (return value of the .times method is the integer itself)
# OUTPUT:
#   Hello, World!
#   This is a block.
#   Hello, World!
#   This is a block.
#   Hello, World!
#   This is a block.
#   Hello, World!
#   This is a block.
#   Hello, World!
#   This is a block.

# count is a block variable, starts from 0 to 4
5.times { |count| puts "#{count}. Hello, World!" } #=> 5
# OUTPUT:
#   0. Hello, World!
#   1. Hello, World!
#   2. Hello, World!
#   3. Hello, World!
#   4. Hello, World!

count #=> undefined local variable or method `count' for main:Object (NameError)

# Edge cases:
# Can include other block variables, they will be just equal to nil
5.times { |count, another_block_variable| p another_block_variable }
# OUTPUT:
#   nil
#   nil
#   nil
#   nil
#   nil
