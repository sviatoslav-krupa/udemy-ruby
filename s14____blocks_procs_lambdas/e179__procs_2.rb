# Procs II
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482530#overview) is the link to the video.

phrase = Proc.new { puts "Inside a proc" }

# no params for :greeter method
def greeter
  puts "I'm inside the greeter method"
  yield # block_given? is true even if &proc is passed as an argument
end

greeter(&phrase) # Even if we didn't receive any parameters in a method
=begin
  I'm inside the greeter method
  Inside a proc
=end

hi = Proc.new { puts "Hi there" }
5.times(&hi)
=begin
  Hi there
  Hi there
  Hi there
  Hi there
  Hi there
=end

# Call proc directly with .call
hi.call #=> Hi there

# Edge case
test_proc = Proc.new { |name| puts name }
test_proc.call #=> nil
=begin

=end

test_proc.call("Sviat") #=> nil
=begin
  Sviat
=end
