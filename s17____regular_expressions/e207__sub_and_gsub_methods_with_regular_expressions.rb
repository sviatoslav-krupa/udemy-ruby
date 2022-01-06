# The .sub and .gsub Methods with Regular Expressions
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482594#search) is the link to the video.

# .sub (substitution) and .gsub (global substitution) - find and replace
# arguments (what_to_find_and_remove, what_to_insert)
# methods with ! mutate object

# .sub - replaces only first occurrence
"whimper mmm".sub("m", "s") #=> "whisper mmm"

# .gsub - replaces all occurrences
"whimper mmm".gsub("m", "s") #=> "whisper sss"
"555 555 1234".gsub(" ", "-") #=> "555-555-1234"
"(555)-555 1234".gsub(" ", "").gsub("(", "").gsub(")", "").gsub("-", "") #=> "5555551234"
"(555)-555 1234".gsub(/[-\s\(\)]/, "") #=> "5555551234"
"(555)-555 1234".gsub(/[^\d]/, "") #=> "5555551234"
