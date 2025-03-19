# Notes:
#   * `block_given?` - checks whether block is supplied to a method: `yield if block_given?`

def pass_control_on_condition
  puts "This is inside the method"
  puts "`block_given?` value is #{block_given?}"
  yield if block_given?
  puts "Now I'm back inside the method"
end

pass_control_on_condition # no errors due to check
# OUTPUT:
#   This is inside the method
#   `block_given?` value is false
#   Now I'm back inside the method

pass_control_on_condition { puts "Now I'm inside the block" }
# OUTPUT:
#   This is inside the method
#   `block_given?` value is true
#   Now I'm inside the block
#   Now I'm back inside the method
