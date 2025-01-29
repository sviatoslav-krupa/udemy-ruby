# Coding Exercise 2: Evens and Odds
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/quiz/4422236#overview) is the link to the exercise.

def evens_and_odds(numbers)
  numbers.partition { |number| number.odd? }
end

evens_and_odds([4, 8, 15, 16, 23, 42]) # => [[15, 23], [4, 8, 16, 42]]
evens_and_odds([2, 4, 6]) # => [[], [2, 4, 6]]
evens_and_odds([1, 3, 5]) # => [[1, 3, 5], []]
