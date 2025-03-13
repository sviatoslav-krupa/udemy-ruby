# Notes:
#   * Concatenation - combining strings together

first_name = "Sviatoslav"
last_name = "Krupa"

# simple +
first_name + " " + last_name #=> "Sviatoslav Krupa" (:first_name wasn't changed)

# shorthand for +
first_name += last_name
first_name #=> "SviatoslavKrupa" (mutates, changes object :first_name)

# .concat method
first_name.concat(" ", last_name) #=> "Sviatoslav Krupa" (mutates, changes object :first_name)

# .prepend method - prepends strings in the same order as it was passed to a method call
first_name.prepend(last_name, " ") #=> "Krupa Sviatoslav" (mutates, changes object :first_name)

# shovel operator
first_name << " " << last_name #=> "Sviatoslav Krupa" (mutates, changes object :first_name)

# Edge cases:
first_name + 5 + last_name      #=> no implicit conversion of Integer into String (TypeError)
first_name + 5.to_s + last_name #=> "Sviatoslav5Krupa"

p first_name.concat(" ", last_name, 4, 5) #=> "Sviatoslav Krupa\u0004\u0005"
# OUTPUT:
#   "Sviatoslav Krupa\u0004\u0005" (no errors)

puts first_name.concat(" ", last_name, 4, 5) #=> nil
# OUTPUT:
#   Sviatoslav Krupa (no errors)

p first_name.prepend(last_name, " ", 4, 6) #=> no implicit conversion of Integer into String (TypeError)

p first_name << " " << last_name << 4 << 5 #=> "Sviatoslav Krupa\u0004\u0005"
# OUTPUT:
#   "Sviatoslav Krupa\u0004\u0005"

puts first_name << " " << last_name << 4 << 5 #=> nil
# OUTPUT:
#   Sviatoslav Krupa
