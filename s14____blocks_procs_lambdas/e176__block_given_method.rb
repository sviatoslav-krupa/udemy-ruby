# The .block_given? Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482522#overview) is the link to the video.

# .block_given? - checks whether block is supplied to a method
# e.g. `yield if block_given?`

def pass_control_on_condition
  puts "This is inside the method"
  yield if block_given?
  puts "Now I'm back inside the method"
end

pass_control_on_condition # no errors due to check
=begin
This is inside the method
Now I'm back inside the method
=end

pass_control_on_condition { puts "Now I'm inside the block" }
=begin
This is inside the method
Now I'm inside the block
Now I'm back inside the method
=end
