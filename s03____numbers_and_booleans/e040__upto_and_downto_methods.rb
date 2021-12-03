# The .upto and .downto Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477672#overview) is the link to the video.

# Iterates from 5 to 1 with step 1 (including 5 and 1)
# Returns last value
5.downto(1) { |count| puts count } # => 1 (prints 5, 4, 3, 2, 1)

# Iterates from 1 to 5 with step 1 (including 1 and 5)
# Returns last value
1.upto(5) { |count| puts count } # => 5 (prints 1, 2, 3, 4, 5)

# Edge cases:
1.downto(5) { |count| puts count } # => 1 (no iterations here)
5.upto(1) { |count| puts count } # => 5 (no iterations here)

1.downto(5.2) { |count| puts count } # => 1 (no iterations here, no error)
5.upto(1.3) { |count| puts count } # => 5 (no iterations here, no error)

1.downto("qwe") { |count| puts count } # => comparison of Integer with String failed (ArgumentError)
5.upto("qwe") { |count| puts count } # => comparison of Integer with String failed (ArgumentError)

10.4.downto(5) { |count| puts count } # => undefined method `downto' for 10.4:Float (NoMethodError)
1.6.upto(5) { |count| puts count } # => undefined method `downto' for 1.6:Float (NoMethodError)
