# Introduction to Blocks

# What is a block:
# * A block is a collection of code to be executed.
# * Block is not an object.
# * Blocks must be attached to a method call.
# * Blocks alter the execution of the method.
# * A block is not an argument/parameter to the method.
# * Blocks can be defined with `{...}` or `do...end`.
# * A block can get or update the value of local variables within the block.

# Method vs Block:
# * Methods can be invoked over and over.
# * A block will only be called once, then disappear (it's temporary construct).
# * A block isolates actions away from the method.

# Example: .each
[3, 5, 7, 9].each { |num| p num ** 2 }
# .each - iterate through items is a core functionality
# block specifies what we want to do each item

# Edge cases
{ |num| p num }.class # => syntax error, unexpected local variable or method, expecting `do' or '{' or '('
