# Notes:
#   * `debug` gem is included starting frm Ruby 3.1
#   * debugger | binding.break - set a breakpoint in the code
#   * continue | c - move to next breakpoint in terminal
#   * step | s - execute the current line and move on to the next line
#   * info | i - see all variables and their values at once
#   * quit | q - exit the debugging
#   * Without `require` - undefined local variable or method 'debugger' for main (NameError)
#   * The more you include when a Ruby program starts, the more memory that consumes

require "debug" # bring this program to make it available in this file

candy = "Sour Patch Kids"
puts "I love eating #{candy}"

debugger #=> candy = "Sour Patch Kids" | beverage = nil | other_variable = nil (eval error: undefined local variable or method 'other_variable' for main)

beverage = "Arizona Iced Tea"
puts "I love drinking #{beverage}"

binding.break #=> candy = "Sour Patch Kids" | beverage = "Arizona Iced Tea" | other_variable = nil (eval error: undefined local variable or method 'other_variable' for main)

puts "This is the end of the program"
