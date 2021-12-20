# More Practice with the .each Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482326#overview) is the link to the video.

def print_odds_and_evens(array)
  odds = []
  evens = []

  array.each do |number|
    if number.odd?
      odds << number
    else
      evens << number
    end
  end

  p odds
  p evens
end

fives = [5, 10, 15, 20, 25, 30, 35, 40]

print_odds_and_evens(fives)
=begin
[5, 15, 25, 35]
[10, 20, 30, 40]
=end
