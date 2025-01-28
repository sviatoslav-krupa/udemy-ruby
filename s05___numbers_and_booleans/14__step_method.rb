# The .step Method
# Docs: https://ruby-doc.org/core-3.1.0/Numeric.html#method-i-step

# Iterates from 1 to 10 with step 2 (like .upto method)
# Returns first value
1.step(10, 2) { |count| puts count } # => 1 (prints 1, 3, 5, 7, 9)

# Iterates from 1 to -10 with step -2 (subtracts 2 on each step, like .downto method)
# Returns first value
1.step(-10, -2) { |count| puts count } # => 1 (prints 1, -1, -3, -5, -7, -9)

# Iterates from 1 to 10 with step 2.5 (works with float as a step)
# Returns first value
1.step(10, 2.5) { |count| puts count } # => 1 (prints 1.0, 3.5, 6.0, 8.5)

# Iterates from 1.2 to 10.5 with step 2 (works with float)
# Returns first value
1.2.step(10.5, 2) { |count| puts count } # => 1.2 (prints 1.2, 3.2, 5.2, 7.2, 9.2)

# Edge cases
1.step(10, -2) { |count| puts count } # => 1 (no iterations, no errors)
1.step(10, "qwe") { |count| puts count } # => comparison of String with 0 failed (ArgumentError)
