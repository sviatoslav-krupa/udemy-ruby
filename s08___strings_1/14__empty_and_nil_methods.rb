# The .empty? and .nil? Methods on a String

# .empty? - returns true if string is empty (has no characters)
# the same as "string".length == 0
p "".empty? # => true
p " ".empty? # => false

# .nil? - available for every Ruby object
p "".nil? # => false

name = "Donald Duck"
last_name = name[100, 4]
p last_name.nil? # => true

last_name = name[3, 4]
p last_name.nil? # => false
