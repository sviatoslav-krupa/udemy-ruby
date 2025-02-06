# Generate A Random Number with the rand Method

rand # => 0.7907232148270402 (random number between 0 and 1)
rand.round(2) # => 0.57
rand * 100 # => 75.10413621936303 (random Float between 0 and 100)

# .rand method with an argument generates a random integer between 0 and that number exclusively
rand(100) # => 70 (random Integer between 0 and 100 exclusively)
rand(101) # => 100 (random Integer between 0 and 101 exclusively)
rand(1) # => 0 (always 0 cause possible values are Integers between 0 and 1 exclusively)
rand(299.5) # => 61 (Integer)

# .rand method with a Range selects a random value from that sequence of values
rand(50..60) # => 52 (60 is included)
rand(50.3..60) # => 59.536005293475746
