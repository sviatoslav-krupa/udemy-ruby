# Notes:
#   * splat arguments - when the number of arguments is unknown
#   * `*` - splat/sponge operator
#   * Splat arguments can be at the start, in the middle and at the end, it works without losing any params
#   * A method can only have one sponge argument

def sum(*nums) # :nums is an array
  sum = 0
  nums.each { |num| sum += num }
  sum
end
sum(1, 2)       #=> 3
sum(3, 4, 6, 9) #=> 21
sum             #=> 0 (:nums == [])

# Edge cases:
def test(a, b, *rest)
  p a
  p b
  p rest
end

test(1, 2, 3, 4, 5)
# OUTPUT:
#   1
#   2
#   [3, 4, 5]

test(1) #=> wrong number of arguments (given 1, expected 2+) (ArgumentError)

test(1, 2)
# OUTPUT:
#   1
#   2
#   []

def test(a, *rest, b)
  p a
  p rest
  p b
end

test(1, 2, 3, 4, 5)
# OUTPUT:
#   1
#   [2, 3, 4]
#   5

test(1, 2)
# OUTPUT:
#   1
#   []
#   2

def test(*rest, a, b)
  p rest
  p a
  p b
end

test(1, 2, 3, 4, 5)
# OUTPUT:
#   [1, 2, 3]
#   4
#   5

test(1, 2)
# OUTPUT:
#   []
#   1
#   2

test(1) #=> wrong number of arguments (given 1, expected 2+) (ArgumentError)

def test(*rest, *one_more_rest, a, b); end # syntax errors found (SyntaxError) (unexpected multiple `*` splat parameters)
