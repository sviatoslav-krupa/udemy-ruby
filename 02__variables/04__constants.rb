# Notes:
#   * Name starts with capital letter, best practice to make all letter capital
#   * Can be changed but warning will appear

NAME = "Sviatoslav"
Name = "Taras" # no warning due to case sensitivity
PI = 3.14159

NAME = "John"
# OUTPUT:
#   02__variables/04__constants.rb:10: warning: already initialized constant NAME
#   02__variables/04__constants.rb:7: warning: previous definition of NAME was here

NAME #=> "John" (anyway, NAME = "John")
