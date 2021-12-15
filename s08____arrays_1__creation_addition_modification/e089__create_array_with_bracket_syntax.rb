# Create An Array with Bracket Syntax
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482080#overview) is the link to the video.

# Array of integers
numbers = [4, 8, 15, 16, 23, 42]

p numbers
# => [4, 8, 15, 16, 23, 42]

print numbers
# => [4, 8, 15, 16, 23, 42] (returns nil)

puts numbers
=begin
4
8
15
16
23
42
(returns nil)
=end

# Array of strings
toys = ["Teddy Bear", "Super Soaker", "Board Game"]
p toys # => ["Teddy Bear", "Super Soaker", "Board Game"]

# Can contain different types of objects
things = [4, true, "hello", 10.99]
p things # => [4, true, "hello", 10.99]

# Can contain duplicate values
registrations = [true, true, false, true, false]
p registrations # => [true, true, false, true, false]

# Array in array (multidimensional array, inner arrays can have different sizes)
students = [
  ["Boris", 25, true],
  ["Sviat", 24]
]
p students
# => [["Boris", 25, true], ["Sviat", 24]]

puts students
=begin
Boris
25
true
Sviat
24
=end
