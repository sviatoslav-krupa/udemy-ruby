# The .empty? and .nil? Methods on a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481530#overview) is the link to the video.

# .empty? - returns true if string is empty (has no characters)
# the same as "string".length == 0
p "".empty? # => true
p " ".empty? # => false

# .nil?
p "".nil?

name = "Donald Duck"
last_name = name[100, 4]
p last_name.nil? # => true

last_name = name[3, 4]
p last_name.nil? # => false
