# Coding Exercise 4: Count of values in a Hash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/quiz/4423480#overview) is the link to the exercise.

def value_count(hash, value)
  hash.values.count(value)
end

hash = { a: 5, b: 2, c: 3, d: 2 }

value_count(hash, 2) #=> 2
value_count(hash, 3) #=> 1
