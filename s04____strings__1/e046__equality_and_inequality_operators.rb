# Equality and Inequality Operators with Strings
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481482#overview) is the link to the video.

a = "Hello"
b = "hello"
c = "Hello"

# Equality operator
p a == b # => false (case sensitivity)
p a == "Hello " # => false (the spaces matters)
p a == c # => true
p a == a # => true

# Inequality operator
p a != b # => true (case sensitivity)
p a != "Hello " # => true (the spaces matters)
p a != c # => false
p a != a # => false

# Less than (<)
p "Apple" < "Banana" # => true (alphabetical sorting, which letter alphabetically goes first - that letter has lower value)
p "hello" < "help" # => true
p "A" < "a" # => true (capital letters goes first)
p "Z" < "a" # => true (capital letters goes first)

# Greater than (>)
p "Apple" > "Banana" # => false (alphabetical sorting)
p "hello" > "help" # => false
p "Help" > "banana" # => false (capital letters goes first)
p "Help" > "Banana" # => true (capital letters goes first)
