# Notes:
#   * && - all conditions have to evaluate to true to give true in a result
#   * || - at least one condition have to evaluate to true to give true in a result


# &&

age = 25
ticket = "General Admission"
id = true

if age > 21 && ticket # here we check whether `ticket` is present
  "Congratulations, welcome to the show!"
elsif ticket && id # `id == true` can be shorten to just `id`
  "Alright, you get in anyway"
end #=> "Congratulations, welcome to the show!"

# Short circuit evaluation: if one condition is falsey - other conditions won't be evaluated
# In the example, `ticket` won't be evaluated
18 > 21 && ticket #=> false

# Edge cases:
# when all arguments are truthy
3 && 5 && 8 #=> 8 (return evaluation of last expression that is true)


# ||

price = 10
budget = 5
mood = "Happy"

if budget > price || mood == "Happy"
  "I'm going to buy the item!"
end #=> "I'm going to buy the item!" (even if the first condition is falsey, the second is truthy)

# Short circuit evaluation: if one condition is truthy - other conditions won't be evaluated
# In the example, `mood == "Happy"` won't be evaluated
18 < 21 || mood == "Happy" #=> true

# Edge cases:
# when all arguments are truthy
3 || 5 || 9 #=> 3 (return evaluation of first expression that is true)
