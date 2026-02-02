# What is a regular expression?
#   * A regular expression is another Ruby object. The class is Regexp
#   * Regular expressions are used to match patterns in strings
#   * Regular expressions are created with two forward slashes `//` syntax
#   * The condition is placed between the two forward slashes `//`

# Notes:
#   * The `=~` syntax will return the index position of the FIRST match: `string =~ //`

# Rubular:
#   * https://rubular.com

//.class #=> Regexp

phrase = "The Ruby programming language is amazing!"

phrase =~ /T/     #=> 0 (index position of the first match)
phrase =~ /t/     #=> nil (no matches, case sensitive)
phrase =~ /m/     #=> 15
phrase =~ /Ruby/  #=> 4
phrase =~ /!/     #=> 40
phrase =~ / /     #=> 3 (whitespace works as well)

# The order doesn't matter
/T/ =~ phrase     #=> 0
/t/ =~ phrase     #=> nil
/m/ =~ phrase     #=> 15
/Ruby/ =~ phrase  #=> 4
/!/ =~ phrase     #=> 40
/ / =~ phrase     #=> 3

# Edge cases:
phrase =~ /./ #=> 0 (`.` means any character, "T" satisfies this condition)
