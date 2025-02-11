# Iterate over String Characters
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482378#overview) is the link to the video.

# .each_char
# .split("")
# .chars

"Hello, World!".each_char { |char| p char }
=begin
"H"
"e"
"l"
"l"
"o"
","
" "
"W"
"o"
"r"
"l"
"d"
"!"
=end

name = "Sviat"
chars = name.split("")
chars.each { |char| p char }
=begin
"S"
"v"
"i"
"a"
"t"
=end

chars = name.chars
chars.each { |char| p char }
=begin
"S"
"v"
"i"
"a"
"t"
=end
