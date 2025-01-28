# The case Statement
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481724#overview) is the link to the video.

# case - replace for multiple if statements

def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce! That's delicious!"
  when "Sushi", "Tofu" # Will return only this for "Tofu" (returns the first matching)
    "Great choice! My favourite food!"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling! The perfect combination!"
  when "Tofu", "Brussels Sprouts"
    "Disgusting! Yuck!"
  else
    "I don't know about that food."
  end
end

p rate_my_food("Steak") # => "Pass the steak sauce! That's delicious!"
p rate_my_food("Sushi") # => "Great choice! My favourite food!"
p rate_my_food("Tofu") # => "Great choice! My favourite food!"
p rate_my_food("Brussels Sprouts") # => "Disgusting! Yuck!"
p rate_my_food("Yogurt") # => "I don't know about that food."

def calculate_school_grade(grade)
  case grade
  when 90..100 # including 100
    "A"
  when 80...90 # not including 90 (the same as `80...89`)
    "B"
  when 70...80 then "C" # shorter form with `then` without extra line
  when 60...70 then "D"
  else "F"
  end
end

p calculate_school_grade(95) # => "A"
p calculate_school_grade(89) # => "B"
p calculate_school_grade(72) # => "C"
p calculate_school_grade(61) # => "D"
p calculate_school_grade(40) # => "F"
