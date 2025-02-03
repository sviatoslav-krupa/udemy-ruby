# Statement Modifiers / Inline Modifiers

# IF

number = 5000
verified = true

if number > 2500 && verified
  puts "Huge number!"
end # => Huge number!

puts "Huge number!" if number > 2500 && verified # => Huge number!

# UNLESS

x = 8

unless x > 10
  puts "x is not greater than 10"
end # => x is not greater than 10

puts "x is not greater than 10" unless x > 10 # => x is not greater than 10


# Edge case
# If body has more than 1 line of code

unless x > 10
  puts "x is not greater than 10"
  puts "One more line"
end
=begin
  x is not greater than 10
  One more line
=end

puts "x is not greater than 10"; puts "One more line" unless x > 10
=begin
  x is not greater than 10
  One more line
=end
