# Notes
#   .require, .require_relative - executes file only once
#   .require - by default look for a file in Ruby installation folder
#   .require_relative - by default look for a file in current directory of the file
#   Should not have an extension of the file in the end of the file path
#   Use to import some functionality (class, method)

puts "This is the beginning!"

# Just one execution for both .require and .require_relative of the same file
require "./05_06__the_end"
require "./05_06__the_end"
require_relative "05_06__the_end"
require_relative "05_06__the_end"

# OUTPUT:
#   This is the beginning!
#   This is the end!
