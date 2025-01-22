# Constants

# Notes:
# * Name starts with capital letter, best practice to make all letter capital
# * Can be changed but warning will appear

NAME = "Sviatoslav"
Name = "Taras" # no warning due to case sensitivity
PI = 3.14159

NAME = "John"
# Section 3: Variables/04__constants.rb:10: warning: already initialized constant NAME
# Section 3: Variables/04__constants.rb:7: warning: previous definition of NAME was here

p NAME
# => "John" (anyway, NAME = "John")
