# Example task
# 90 to 100 is an A
# 80 to 89 is a B
# 70 to 79 is a C
# 60 to 79 is a D
# <60 is an F

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
