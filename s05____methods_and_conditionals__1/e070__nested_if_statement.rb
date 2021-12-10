# Nested if Statements
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481602#overview) is the link to the video.

def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "breakfast"
      "Cereal"
    elsif time_of_day == "lunch"
      "Sandwich"
    elsif time_of_day == "dinner"
      "Chicken Nuggets"
    end
  elsif time_of_week == "weekend"
    if time_of_day == "breakfast"
      "French Toast"
    elsif time_of_day == "lunch"
      "BBQ Chicken Pizza"
    elsif time_of_day == "dinner"
      "Steak"
    end
  end
end

p meal_plan("weekday", "lunch") # => "Sandwich"
p meal_plan("weekday", "dinner") # => "Chicken Nuggets"
p meal_plan("weekend", "breakfast") # => "French Toast"
p meal_plan("weekend", "dinner") # => "Steak"
