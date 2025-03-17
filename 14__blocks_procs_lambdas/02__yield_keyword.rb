# Notes:
#   * `yield` - transfers control from a method to a block attached to the method
#   * The last evaluation of the block is returned to the method implicitly (without `return` keyword), (yield => last evaluation of the block)
#   * explicit `return` produces an error inside a block

def pass_control
  puts "This is inside the method"
  yield # Pass control from method to block
  puts "Now I'm back inside the method"
end
pass_control #=> no block given (yield) (LocalJumpError)
pass_control { puts "Now I'm inside the block" }
# OUTPUT:
#   This is inside the method
#   Now I'm inside the block
#   Now I'm back inside the method

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end
who_am_i { "handsome" }         #=> I am very handsome
who_am_i { return "handsome" }  #=> unexpected return (LocalJumpError)

# Multiple yields
def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end
result = multiple_pass { puts "Now I'm inside the block" } #=> nil (cause last evaluation of :multiple_pass is :yield => puts <...> => returns nil)
# OUTPUT:
#   Inside the method
#   Now I'm inside the block
#   Back inside the method
#   Now I'm inside the block

result = multiple_pass { "Now I'm inside the block" } #=> "Now I'm inside the block"
# OUTPUT:
#   Inside the method
#   Back inside the method

# Edge cases:
# No problem if there is no yield in method but block exists
def another_pass_control
  puts "This is inside the method"
  puts "Now I'm back inside the method"
end

another_pass_control
# OUTPUT:
#   This is inside the method
#   Now I'm inside the block
#   Now I'm back inside the method

another_pass_control { puts "Now I'm inside the block" }
# OUTPUT:
#   This is inside the method
#   Now I'm inside the block
#   Now I'm back inside the method
