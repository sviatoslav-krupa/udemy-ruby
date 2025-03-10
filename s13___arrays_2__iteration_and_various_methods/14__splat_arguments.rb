# Splat/Sponge Arguments

# splat arguments - when the number of arguments is unknown
# * - splat/sponge operator

def sum(*nums) # :nums is an array
  sum = 0
  nums.each { |num| sum += num }
  sum
end

sum(1, 2) # => 3
sum(3, 4, 6, 9) # => 21
sum # => 0 (:nums == [])

# Edge cases:
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

test(1) # => wrong number of arguments (given 1, expected 2+) (ArgumentError)

test(1, 2)
=begin
1
2
[]
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

test(1, 2)
=begin
1
[]
2
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

test(1, 2)
=begin
[]
1
2
=end

test(1) # => wrong number of arguments (given 1, expected 2+) (ArgumentError)
