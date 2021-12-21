# The For Loop
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482330#overview) is the link to the video.

numbers = [3, 5, 7]
num = 100

# It doesn't need to initialize :num before, just an example to show overriding
for num in numbers # overrides (not just shadows) :num on line 5
  p num
end
=begin
3
5
7
=end

p num # => 7 (the last value from iterations, :num is not a block variable as with .each method)
