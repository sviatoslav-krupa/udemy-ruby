# The require and require_relative Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482574#search) is the link to the video.

# require, require_relative - executes file only once
# Should not have an extension of the file in the end of the file path
# Use to import some functionality (class, method)

# require - by default look for a file in Ruby installation folder
# require_relative - by default look for a file in current directory of the file

puts "This is the beginning!"

# Just one execution of require or require_relative
require "./e196_e197__end"
require "./e196_e197__end"
require_relative "e196_e197__end"
require_relative "e196_e197__end"

=begin
  This is the beginning!
  This is the end!
=end
