# Iteration over Array with while or until Loops
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482342#overview) is the link to the video.

animals = %w[Lion Zebra Baboon Cheetah]

i = 0
while i < animals.length
  puts i
  puts animals[i]
  i += 1
end
=begin
0
Lion
1
Zebra
2
Baboon
3
Cheetah
=end

i = 0
until i == animals.length
  puts i
  puts animals[i]
  i += 1
end
=begin
0
Lion
1
Zebra
2
Baboon
3
Cheetah
=end

# Edge cases

i = 0
while i < 10
  p i
  i += 1.5 # Iteration step can be custom
end
=begin
0
1.5
3.0
4.5
6.0
7.5
9.0
=end

i = 0
while i < 10
  p i
  i += "qwe" # String can't be coerced into Integer (TypeError)
end
