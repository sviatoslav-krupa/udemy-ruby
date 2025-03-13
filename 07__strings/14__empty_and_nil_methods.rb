# Notes:
#   * .empty? - returns true if string is empty (has no characters); the same as "string".length == 0
#   * .nil? - available for every Ruby object

"".empty?   #=> true
" ".empty?  #=> false

"".nil?     #=> false

name = "Donald Duck"
last_name = name[100, 4]
last_name.nil? #=> true

last_name = name[3, 4]
last_name.nil? #=> false
