# Comparison with the Inequality (!=) Operator
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477656#overview) is the link to the video.

# Checks if 2 values are different (reverse to ==)
p 10 != 10 # => false
p 10 != 20 # => true
p 10 != "10" # => true
p 10 != 10.0 # => false (even here are Integer and Float)
p 10 != 10.1 # => true
p "Hello" != "Goodbye" # => true
p "Hello" != "Hello" # => false
p "Hello" != "hello" # => true (case sensitivity matters)
p "Hello".downcase != "hello".downcase # => false
