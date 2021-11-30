# Variables
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477574#overview) is the link to the video.

# What is a variable:
# * It's a reference (pointers, identifiers) to an object. That object is subject to change.
# * The variable itself os not an object. It's a placeholder.
# * Ruby is dynamically typed. Variable's types do not have to be declared.
#   The same variable can be reassigned to an object of another data type.

# Variable syntax:
# * Variables are pointed to an object with the equal sign "=".
# * The right side of the equal sign is always evaluated first.
# * Variable names should start with a lowercase letter ro underscore ("_").
# * Spaces are not allowed (best practice to use underscore "_" instead).
# * Variables names are case-sensitive (name != nAme).
# * Don't use Ruby keywords (https://docs.ruby-lang.org/en/2.2.0/keywords_rdoc.html).

# Examples:
first_name = "Sviatoslav" # name points to a string "Sviatoslav"
last_name = "Krupa"
handsome = true
age = 23 + 1

# Usage:
puts first_name # => Sviatoslav
puts last_name # => Krupa
puts first_name + " " + last_name # => Sviatoslav Krupa
puts handsome # => true
puts age # => 24
puts age + 5 # => 29

# Dynamical typing
age = 50
p age # => 50 (number)
age = "50"
p age # => "50" (string)
