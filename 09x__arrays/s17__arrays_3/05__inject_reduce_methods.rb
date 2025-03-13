# The .inject and .reduce Methods on an Array

# .inject / .reduce - the same functionality (to iterate through array and accumulate all elements in one value, e.g. sum)

# If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element.
# If you specify a symbol instead, then each element in the collection will be passed to the named method of memo.

# In either case, the result becomes the new value for memo.

# At the end of the iteration, the final value of memo is the return value for the method.

# If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.


# with starting value (first :memo)
result = [10, 20, 30, 40].reduce(0) do |memo, current|
  puts "The memo value is #{memo}"
  puts "The current value is #{current}"
  puts
  memo + current # writes into :memo for next iteration
end
=begin
The memo value is 0
The current value is 10

The memo value is 10
The current value is 20

The memo value is 30
The current value is 30

The memo value is 60
The current value is 40

=end
result #=> 100

# starting value is equal to first element if not passed
result = [10, 20, 30, 40].reduce do |memo, current|
  puts "The memo value is #{memo}"
  puts "The current value is #{current}"
  puts
  memo + current # writes into :memo
end
=begin
The memo value is 10
The current value is 20

The memo value is 30
The current value is 30

The memo value is 60
The current value is 40

=end
result #=> 100

result = [3, 4, 5, 6, 7].reduce(1) { |memo, current| memo * current }
result #=> 2520

result = [3, 4, 5, 6, 7].reduce { |memo, current| memo * current } # starting value is equal to first element
result #=> 2520
