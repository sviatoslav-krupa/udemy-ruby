# Iterate over String Characters

# .each_char == .split("").each {...} == .chars.each {...}

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

"Sviat".split("") # => ["S", "v", "i", "a", "t"]
"Sviat".split("").each { |char| p char }
=begin
"S"
"v"
"i"
"a"
"t"
=end

"Sviat".chars # => ["S", "v", "i", "a", "t"]
"Sviat".chars.each { |char| p char }
=begin
"S"
"v"
"i"
"a"
"t"
=end
