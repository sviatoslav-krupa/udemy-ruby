# Splat Arguments
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482404#overview) is the link to the video.

# splat arguments - when the number of arguments is unknown

def sum(*nums) # :nums is an array
  sum = 0
  nums.each { |num| sum += num }
  sum
end

sum(1, 2) #=> 3
sum(3, 4, 6, 9) #=> 21
sum #=> 0 (:nums == [])

# Edge cases
# Splat arguments can be at the start, in the middle and at the end, it works without losing any params

def test(a, b, *rest)
  p a
  p b
  p rest
end
test(1, 2, 3, 4, 5)
=begin
1
2
[3, 4, 5]
=end

def test(a, *rest, b)
  p a
  p rest
  p b
end
test(1, 2, 3, 4, 5)
=begin
1
[2, 3, 4]
5
=end

def test(*rest, a, b)
  p rest
  p a
  p b
end
test(1, 2, 3, 4, 5)
=begin
[1, 2, 3]
4
5
=end
