# Notes
#   .load - accesses file in current directory by default, opens it and executes right now, transfers control to loaded file
#   .load can execute file multiple times
#   must provide an extension of the file in the end of the file path

puts "This is the beginning!"
load "05_06__the_end.rb"
puts "Alright, that was successful."
load "./05_06__the_end.rb"

if 8 > 5
  load "05_06__the_end.rb"
end

if 8 < 5
  load "05_06__the_end.rb" # doesn't execute the file here
end

# OUTPUT:
#   This is the beginning!
#   This is the end!
#   Alright, that was successful.
#   This is the end!
#   This is the end!
