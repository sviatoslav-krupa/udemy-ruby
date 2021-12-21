# The next Keyword
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482346#overview) is the link to the video.

# next - moves to the next iteration

numbers = [1, 2, 3, 4, "hello", 5, 6, nil, 7, 8, []]
numbers.each do |number|
  unless number.is_a?(Numeric)
    next
  end

  puts "The square of #{number} is a #{number ** 2}"
end
=begin
The square of 1 is a 1
The square of 2 is a 4
The square of 3 is a 9
The square of 4 is a 16
The square of 5 is a 25
The square of 6 is a 36
The square of 7 is a 49
The square of 8 is a 64
=end
