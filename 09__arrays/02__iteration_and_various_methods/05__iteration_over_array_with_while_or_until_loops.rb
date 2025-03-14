animals = %w[Lion Zebra Baboon Cheetah]

i = 0
while i < animals.length
  puts i
  puts animals[i]
  i += 1
end
# OUTPUT:
#   0
#   Lion
#   1
#   Zebra
#   2
#   Baboon
#   3
#   Cheetah

i = 0
until i == animals.length
  puts i
  puts animals[i]
  i += 1
end
# OUTPUT:
#   0
#   Lion
#   1
#   Zebra
#   2
#   Baboon
#   3
#   Cheetah

# Edge cases:
i = 0
while i < 10
  p i
  i += 1.5 # Iteration step can be custom
end
# OUTPUT:
#   0
#   1.5
#   3.0
#   4.5
#   6.0
#   7.5
#   9.0

i = 0
while i < 10
  p i
  i += "qwe" # String can't be coerced into Integer (TypeError)
end
