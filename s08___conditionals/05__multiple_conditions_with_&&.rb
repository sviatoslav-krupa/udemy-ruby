# Multiple Conditions with && Operator

# && - all conditions have to evaluate to true to give true in a result

age = 25
ticket = "General Admission"
id = true

if age > 21 && ticket # here we check whether `ticket` is present
  puts "Congratulations, welcome to the show!"
elsif ticket && id # `id == true` can be shorten to just `id`
  puts "Alright, you get in anyway"
end # => Congratulations, welcome to the show!

# Short circuit evaluation
# If one condition is falsey - other conditions won't be evaluated
# In the example, `ticket` won't be evaluated
18 > 21 && ticket # => false

# Edge case
# If all arguments are truthy:
3 && 5 && 8 # => 8 (return evaluation of last expression that is true)
