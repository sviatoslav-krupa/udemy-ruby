# The yield Keyword
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482520#overview) is the link to the video.

# yield - transfers control from a method to a block attached to the method

def pass_control
  puts "This is inside the method"
  yield # Pass control from method to block
  puts "Now I'm back inside the method"
end
pass_control #=> no block given (yield) (LocalJumpError)
pass_control { puts "Now I'm inside the block" }
=begin
This is inside the method
Now I'm inside the block
Now I'm back inside the method
=end


# The last evaluation of the block is returned to the method implicitly (without `return` keyword), (yield => last evaluation of the block)
def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end
who_am_i { "handsome" } #=> I am very handsome
who_am_i { return "handsome" } #=> unexpected return (LocalJumpError)


# Multiple yields
def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end
result = multiple_pass { puts "Now I'm inside the block" }
=begin
Inside the method
Now I'm inside the block
Back inside the method
Now I'm inside the block
=end
p result #=> nil (cause last evaluation of :multiple_pass is :yield => puts <...> => returns nil)

result = multiple_pass { "Now I'm inside the block" }
=begin
Inside the method
Back inside the method
=end
p result #=> "Now I'm inside the block"
