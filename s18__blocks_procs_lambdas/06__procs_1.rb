# Procs I

# Proc is an object, works as a saved, reusable block.
# Proc.new {...} == proc {...}
# Block is not an object.

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 20]
c = [11, 12, 13, 14, 15]

a_cubes = a.map { |num| num ** 3 } #=> [1, 8, 27, 64, 125]
b_cubes = b.map { |num| num ** 3 } #=> [216, 343, 512, 729, 8000]
c_cubes = c.map { |num| num ** 3 } #=> [1331, 1728, 2197, 2744, 3375]

# Syntax: Proc.new { ... } (like passing a block `{}` to :new method)
cubes = Proc.new { |num| num ** 3 }
cubes.class #=> Proc
cubes.object_id #=> 1020

# Passing proc to a method (like any other parameters but with `&` at the beginning)
a_cubes = a.map(&cubes) #=> #=> [1, 8, 27, 64, 125]
b_cubes = b.map(&cubes) #=> #=> [216, 343, 512, 729, 8000]
c_cubes = c.map(&cubes) #=> #=> [1331, 1728, 2197, 2744, 3375]

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) }


# Another syntax
squares = proc { |num| num ** 2 }
b_squares = b.map(&squares) #=> [36, 49, 64, 81, 400]


currencies = [10, 20, 30, 40, 50]
to_euros = proc { |currency| currency * 0.95 }
to_rupees = proc { |currency| currency * 68.13 }
to_pesos = proc { |currency| currency * 20.67 }

currencies.map(&to_euros) #=> [9.5, 19.0, 28.5, 38.0, 47.5]
currencies.map(&to_rupees) #=> [681.3, 1362.6, 2043.8999999999999, 2725.2, 3406.5]
currencies.map(&to_pesos) #=> [206.70000000000002, 413.40000000000003, 620.1, 826.8000000000001, 1033.5]


ages = [10, 60, 83, 30, 43, 25]
is_old = proc { |age| age > 55 }

old_ages = ages.select(&is_old) #=> [60, 83]
young_ages = ages.reject(&is_old) #=> [10, 30, 43, 25]
