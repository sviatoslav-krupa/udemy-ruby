# Array of integers
numbers = [4, 8, 15, 16, 23, 42]

numbers #=> [4, 8, 15, 16, 23, 42]

print numbers #=> nil
# OUTPUT:
#   [4, 8, 15, 16, 23, 42]

puts numbers #=> nil
# OUTPUT:
#   4
#   8
#   15
#   16
#   23
#   42

# Array of strings
toys = ["Teddy Bear", "Super Soaker", "Board Game"]
toys #=> ["Teddy Bear", "Super Soaker", "Board Game"]

# Can contain different types of objects
things = [4, true, "hello", 10.99]
things #=> [4, true, "hello", 10.99]

# Can contain duplicate values
registrations = [true, true, false, true, false]
registrations #=> [true, true, false, true, false]

# Array in array (multidimensional array, inner arrays can have different sizes)
spreadsheet = [
  ["Student", "Class", "Grade"],
  ["Sally", "Computer Science", 95],
  ["Ingrid", "Physics", 45]
]
spreadsheet #=> [["Student", "Class", "Grade"], ["Sally", "Computer Science", 95], ["Ingrid", "Physics", 45]]

first_row, second_row, third_row = spreadsheet
first_row   #=> ["Student", "Class", "Grade"]
second_row  #=> ["Sally", "Computer Science", 95]
third_row   #=> ["Ingrid", "Physics", 45]
