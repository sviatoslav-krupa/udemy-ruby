# The .inject and .reduce Methods on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482418#overview) is the link to the video.

# .inject / .reduce - the same functionality (to iterate through array and accumulate all elements in one value, e.g. sum)
# Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.
# If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element.
# If you specify a symbol instead, then each element in the collection will be passed to the named method of memo.
# In either case, the result becomes the new value for memo.
# At the end of the iteration, the final value of memo is the return value for the method.
# If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.

#                         starting value (first :previous)
result = [10, 20, 30, 40].reduce(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  puts
  previous + current # writes into :previous for next iteration
end
=begin
The previous value is 0
The current value is 10

The previous value is 10
The current value is 20

The previous value is 30
The current value is 30

The previous value is 60
The current value is 40

=end
p result #=> 100

#                      starting value (equal to first element if not passed)
result = [10, 20, 30, 40].reduce do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  puts
  previous + current # writes into memo (:previous)
end
=begin
The previous value is 10
The current value is 20

The previous value is 30
The current value is 30

The previous value is 60
The current value is 40

=end
p result #=> 100

result = [3, 4, 5, 6, 7].reduce(1) { |previous, current| previous * current }
p result #=> 2520

result = [3, 4, 5, 6, 7].reduce { |previous, current| previous * current } # starting value is equal to first element
p result #=> 2520
