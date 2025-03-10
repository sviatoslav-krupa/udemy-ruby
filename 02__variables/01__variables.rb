# What is a variable:
#   * It's a reference (pointers, identifiers) to an object; that object is subject to change
#   * The variable itself os not an object, it's a placeholder
#   * Ruby is dynamically typed: variable's types do not have to be declared, the same variable can be reassigned to an object of another data type

# Variable syntax:
#   * Variables are pointed to an object with the equal sign "="
#   * The right side of the equal sign is always evaluated first
#   * Variable names should start with a lowercase letter or underscore ("_")
#   * Spaces are not allowed (best practice to use underscore "_" instead)
#   * Variables names are case-sensitive (name != nAme)
#   * Don't use Ruby keywords - https://docs.ruby-lang.org/en/2.2.0/keywords_rdoc.html

first_name = "Sviatoslav" # name points to a string "Sviatoslav"
last_name = "Krupa"
handsome = true
age = 23 + 1

puts first_name #=> nil
# OUTPUT:
#   Sviatoslav

puts last_name #=> nil
# OUTPUT:
#   Krupa

puts first_name + " " + last_name #=> nil
# OUTPUT:
#   Sviatoslav Krupa

puts handsome #=> nil
# OUTPUT:
#   true

puts age #=> nil
# OUTPUT:
#   24

puts age + 5 #=> nil
# OUTPUT:
#   29


# Dynamical typing
age = 50
p age #=> 50 (Number)
# OUTPUT:
#   50

age = "50"
p age #=> "50" (String)
# OUTPUT:
#   "50"
