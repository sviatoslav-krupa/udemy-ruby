# Create An Array with Bracket Syntax

# Array of integers
numbers = [4, 8, 15, 16, 23, 42]

p numbers
#=> [4, 8, 15, 16, 23, 42]

print numbers
#=> [4, 8, 15, 16, 23, 42] (returns nil)

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
p toys #=> ["Teddy Bear", "Super Soaker", "Board Game"]

# Can contain different types of objects
things = [4, true, "hello", 10.99]
p things #=> [4, true, "hello", 10.99]

# Can contain duplicate values
registrations = [true, true, false, true, false]
p registrations #=> [true, true, false, true, false]

# Array in array (multidimensional array, inner arrays can have different sizes)
spreadsheet = [
  ["Student", "Class", "Grade"],
  ["Sally", "Computer Science", 95],
  ["Ingrid", "Physics", 45]
]

p spreadsheet #=> [["Student", "Class", "Grade"], ["Sally", "Computer Science", 95], ["Ingrid", "Physics", 45]]

first_row, second_row, third_row = spreadsheet

p first_row #=> ["Student", "Class", "Grade"]
p second_row #=> ["Sally", "Computer Science", 95]
p third_row #=> ["Ingrid", "Physics", 45]
