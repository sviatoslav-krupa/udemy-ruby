# Notes:
#   * step | s - execute the current line and move to the beginning of the next line

require "debug"

debugger

puts "Hello".downcase
puts "Goodbye".upcase

debugger

3.times do |count|
  puts "On loop number #{count}"
  puts "Blah blah blah"
  binding.break
end
