# Intro to Regular Expressions
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482580#search) is the link to the video.

# What is a regular expression?
# * A regular expression is another Ruby object. The class is Regexp.
# * Regular expressions are used to match patterns in strings.
# * Regular expressions are created with two forward slashes `//` syntax.
# * The condition is places between the two forward slashes `//`.

# Syntax:
# * The =~ syntax will return the index position of the first match
#   `string =~ //`

//.class #=> Regexp

phrase = "The Ruby programming language is amazing!"

phrase =~ /T/ #=> 0 (index position of the first match)
phrase =~ /t/ #=> nil (no matches, case sensitive)
phrase =~ /m/ #=> 15
phrase =~ /Ruby/ #=> 4
phrase =~ /!/ #=> 40
phrase =~ / / #=> 3 (whitespace works as well)

/T/ =~ phrase #=> 0
/t/ =~ phrase #=> nil
/m/ =~ phrase #=> 15
/Ruby/ =~ phrase #=> 4
/!/ =~ phrase #=> 40
/ / =~ phrase #=> 3

# Edge cases
phrase = "The Ruby programming language is amazing."
phrase =~ /./ #=> 0 (`.` means any character, "T" satisfies this condition)
