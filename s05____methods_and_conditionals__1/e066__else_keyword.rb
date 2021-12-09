# The else Keyword
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481588#overview) is the link to the video.

grade = "C"

# Without else
if grade == "A"
  puts "That's an excellent grade. Good job!"
elsif grade == "B"
  puts "That's a good grade. Let's bring it nup next time!"
end # =>

# With else
if grade == "A"
  puts "That's an excellent grade. Good job!"
elsif grade == "B"
  puts "That's a good grade. Let's bring it nup next time!"
else
  puts "Unacceptable!"
end # => Unacceptable!

def odd_or_even(num)
  if num.odd?
    "The number is odd"
  else
    "The number is even"
  end
end
p odd_or_even(3) # => "The number is odd"
p odd_or_even(6) # => "The number is even"
