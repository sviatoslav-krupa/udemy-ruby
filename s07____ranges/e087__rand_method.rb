# Generate A Random Number with the rand Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482030#overview) is the link to the video.

p rand # => 0.7907232148270402 (random number between 0 and 1)
p rand.round(2) # => 0.57
p rand(100) # => 70 (random Integer between 0 and 100 exclusively)
p rand(101) # => 100 (random Integer between 0 and 101 exclusively)
p rand * 100 # => 75.10413621936303 (random Float between 0 and 100)
p rand(50..60) # => 52
p rand(50.3..60) # => 59.536005293475746
