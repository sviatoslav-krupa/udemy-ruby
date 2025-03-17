phrase = Proc.new { puts "Inside a proc" }

# no params for :greeter method
def greeter
  puts "I'm inside the greeter method"
  yield # block_given? is true even if &proc is passed as an argument
end

greeter(&phrase) # Even if we didn't receive any parameters in a method
# OUTPUT:
#   I'm inside the greeter method
#   Inside a proc

hi = Proc.new { puts "Hi there" }
5.times(&hi)
# OUTPUT:
#   Hi there
#   Hi there
#   Hi there
#   Hi there
#   Hi there

# Call proc directly with .call
hi.call #=> Hi there

# Edge cases:
test_proc = proc { |name| puts name }
test_proc.call #=> nil
# OUTPUT (outputs nothing and adds line break):
#

test_proc.call("Sviat") #=> nil
# OUTPUT:
#   Sviat
