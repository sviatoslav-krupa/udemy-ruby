# Statement Modifiers / Inline Modifiers
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481754#overview) is the link to the video.

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

# WHILE
i = 1

while i < 10
  puts i
  i += 1
end # => nil (prints 1 2 3 4 5 6 7 8 9)

(puts i; i += 1) while i < 10 # => nil (prints 1 2 3 4 5 6 7 8 9)

# UNTIL

i = 1

until i > 9
  # Evaluates body of a loop til condition is true
  puts i
  i += 1
end # => nil (prints 1 2 3 4 5 6 7 8 9)

(puts i; i += 1) until i > 9 # => nil (prints 1 2 3 4 5 6 7 8 9)
