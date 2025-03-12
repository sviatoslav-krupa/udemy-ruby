# Notes:
#   * .sub (substitution) and .gsub (global substitution) - find and replace
#   * .sub - replaces only first occurrence
#   * .gsub - replaces all occurrences
#   * syntax: `sub|gsub(what_to_find_and_remove, what_to_insert)`
#   * methods with ! mutate object

"whimper mmm".sub("m", "s")                                               #=> "whisper mmm"
"whimper mmm".gsub("m", "s")                                              #=> "whisper sss"
"555 555 1234".gsub(" ", "-")                                             #=> "555-555-1234"
"(555)-555 1234".gsub(" ", "").gsub("(", "").gsub(")", "").gsub("-", "")  #=> "5555551234"
"(555)-555 1234".gsub(/[-\s\(\)]/, "")                                    #=> "5555551234"
"(555)-555 1234".gsub(/[^\d]/, "")                                        #=> "5555551234"
