# Exclude Characters
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482592#search) is the link to the video.

sales = "I bought 9 apples, 25 bananas and 4 oranges at the store."

# ignore [^...] elements, except this elements
sales.scan(/[^aeiouAEIOU,\s\d\.]/) #=> ["b", "g", "h", "t", "p", "p", "l", "s", "b", "n", "n", "s", "n", "d", "r", "n", "g", "s", "t", "t", "h", "s", "t", "r"]
