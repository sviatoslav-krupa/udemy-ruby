# Notes:
#   * case - replace for multiple if statements

def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce! That's delicious!"
  when "Sushi", "Tofu"
    "Great choice! My favourite food!"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling! The perfect combination!"
  when "Tofu", "Brussels Sprouts"
    "Disgusting! Yuck!"
  else
    "I don't know about that food."
  end
end
rate_my_food("Steak")             #=> "Pass the steak sauce! That's delicious!"
rate_my_food("Sushi")             #=> "Great choice! My favourite food!"
rate_my_food("Tofu")              #=> "Great choice! My favourite food!" (Will return only this for "Tofu", returns the first matching)
rate_my_food("Brussels Sprouts")  #=> "Disgusting! Yuck!"
rate_my_food("Yogurt")            #=> "I don't know about that food."

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
calculate_school_grade(95) #=> "A"
calculate_school_grade(89) #=> "B"
calculate_school_grade(72) #=> "C"
calculate_school_grade(61) #=> "D"
calculate_school_grade(40) #=> "F"
