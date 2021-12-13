# Negation with !
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481734#overview) is the link to the video.

user = "free"

if user != "subscriber"
  puts "Only subscribers are allowed!"
end # => Only subscribers are allowed!

puts true # => true

# Automatically converts to Boolean and negate
puts !true # => false
puts !1 # => false
puts !nil # => true
puts !"" # => false

# Converting to Boolean
puts !!1 # => true
puts !!false # => false
puts !!nil # => false
puts !!"" # => true
puts !!"Spaceship" # => true
