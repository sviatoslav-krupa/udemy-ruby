# Parallel Variable Assignment
a = 10
b = 20
c = 30

# short form (parallel assignment)
a, b, c = 10, 20, 30      # a = 10, b = 20, c = 30
a, b, c = 10, 20, 30, 40  # a = 10, b = 20, c = 30 (valid, the rest of right side will be ignored)
a, b, c = 10, 20          # a = 10, b = 20, c = nil (valid, c will be nil)
a, b = [1, 2]             # a = 1, b = 2 (if array was passed)


# Swapping Variable Values
# Right side evaluates first, after the right side was evaluated, the operation is the same as in parallel assignment
a = 1
b = 2

a, b = b, a # a = 2, b = 1
a, b = b    # a = 2, b = nil
a = b, a    # a = [2, 1], b = 2, actually, it's not a swapping

# We can use not only 2 variables for swapping:
a = 1
b = 2
c = 3

a, b, c = c, b, a # a = 3, b = 2, c = 1
