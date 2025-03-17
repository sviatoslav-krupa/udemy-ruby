def speak_the_truth
  yield("Sviat") if block_given? # "Sviat" (or what we pass in :yield) will be a block variable inside a block
end
speak_the_truth { |name| p "#{name} is brilliant" }
# OUTPUT:
#   "Sviat is brilliant"

def speak_the_truth_again(name)
  yield(name) if block_given?
end
speak_the_truth_again("Sviat") { |name| p "#{name} is brilliant" }
# OUTPUT:
#   "Sviat is brilliant"

speak_the_truth_again("Sviat") do |name, age|
  p name
  p age
end
# OUTPUT:
#   "Sviat"
#   nil

def number_evaluation(num1, num2, num3)
  puts "Inside a method"
  yield(num1, num2, num3)
end
result = number_evaluation(1, 2, 3) { |num1, num2, num3| num1 * num2 * num3 } #=> 6
# OUTPUT:
#   Inside a method

# Edge cases:
# If no argument passed to the block:
def speak_the_truth_one_more_time
  yield if block_given?
end
speak_the_truth_one_more_time { |name| p "#{name} is brilliant" }
# OUTPUT:
#   " is brilliant" (just nil value, no errors)
