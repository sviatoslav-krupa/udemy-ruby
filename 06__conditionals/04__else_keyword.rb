# Notes:
#   * else - guarantee run a piece of code in if-end block

grade = "C"

# Without else
if grade == "A"
  "That's an excellent grade. Good job!"
elsif grade == "B"
  "That's a good grade. Let's bring it nup next time!"
end #=> nil

# With else
if grade == "A"
  "That's an excellent grade. Good job!"
elsif grade == "B"
  "That's a good grade. Let's bring it nup next time!"
else
  "Unacceptable!"
end #=> Unacceptable!

def odd_or_even(num)
  if num.odd?
    "The number is odd"
  else
    "The number is even"
  end
end
odd_or_even(3) #=> "The number is odd"
odd_or_even(6) #=> "The number is even"
