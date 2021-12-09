# Parameters and Arguments
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481560#overview) is the link to the video.

# :name and :age is parameter
def praise_person(name, age)
  puts "#{name} (#{age} y.o.) is amazing!"
end

# "Sviat" and 24 is an argument
praise_person("Sviat", 24) # => Sviat (24 y.o.) is amazing!

# "David" and 35 is an argument
praise_person "David", 35 # => David (35 y.o.) is amazing!

praise_person # => wrong number of arguments (given 0, expected 1) (ArgumentError)
