# Notes:
#   * `y ||= x` the same as `y = y || x`

y = nil

# Set y to 5 if y is nil
y ||= 5 # the same as `y = y || 5`
y #=> 5

y ||= 10 # y is not nil
y #=> 5

greeting = "Hello"
extraction = 0
letter = greeting[extraction]
letter #=> "H"

extraction = 100
letter = greeting[extraction]
letter #=> nil

letter ||= "Not found"
letter #=> "Not found"
