# Multiple Conditions with || Operator
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481594#overview) is the link to the video.

# || - at least one condition have to evaluate to true to give true in a result

price = 10
budget = 5
mood = "Happy"

if budget > price || mood == "Happy"
  puts "I'm going to buy the item!"
end # => I'm going to buy the item! (even if the first condition is falsey, the second is truthy)

# Short circuit evaluation
# If one condition is truthy - other conditions won't be evaluated
# In the example, `mood == "Happy"` won't be evaluated
18 < 21 || mood == "Happy" # => true
